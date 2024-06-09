import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/auth/services/github_auth_service.dart';
import 'package:gitcentral/shared/services/storage/sharedpref_storage_service.dart';
import 'package:gitcentral/shared/utils/helpers/debouncer.dart';

class GitHubAuthBloc extends Bloc<GitHubAuthEvent, GitHubAuthState> {
  final authService = GetIt.I<GitHubAuthService>();
  final storageService = GetIt.I<SharedPrefsStorageService>();

  ({bool result, String errorMessage})? result;

  GitHubAuthBloc() : super(GitHubAuthState()) {
    // on<GitHubAuthEvent>((event, emit) {
    // if (event is SigningIn) {
    //   signIn(event.code, emit);
    // }
    // });

    on<SigningIn>(signIn);
    on<SigningOut>(signOut);
    on<ValidateToken>(validateToken);
  }
  void signIn(SigningIn event, Emitter<GitHubAuthState> emit) async {
    try {
      final result = await authService.signIn(event.code);
      if (result.isSuccess) {
        emit(state.copyWith(status: const GitHubAuthLoggedIn()));
      } else if (result.isFailure) {
        emit(state.copyWith(status: const GitHubAuthServerError()));
      } else {
        emit(state.copyWith(status: const GitHubAuthOtherException()));
      }
    } catch (e, s) {
      emit(state.copyWith(status: const GitHubAuthOtherException()));
      throw Exception('signIn: $e\n$s');
    }
  }

  /// Revoke token
  void signOut(SigningOut event, Emitter<GitHubAuthState> emit) async {
    try {
      await storageService.clearToken();
      emit(state.copyWith(status: const GitHubAuthLoggedOut()));
    } catch (e, s) {
      emit(state.copyWith(status: const GitHubAuthLoggedOut()));
      throw Exception('signOut: $e\n$s');
    }
  }

  void validateToken(ValidateToken event, Emitter<GitHubAuthState> emit) async {
    try {
      await debouncer();
      final token = await storageService.loadAccessToken();
      if (token == null || token.isEmpty) {
        emit(state.copyWith(status: const GitHubAuthLoggedOut()));
      } else {
        emit(state.copyWith(status: const GitHubAuthLoggedIn()));
      }
    } catch (e, s) {
      emit(state.copyWith(status: const GitHubAuthLoggedOut()));
      throw Exception('validateToken: $e\n$s');
    }
  }
}
