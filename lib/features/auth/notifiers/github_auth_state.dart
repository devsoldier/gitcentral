import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_auth_state.freezed.dart';

@freezed
abstract class GitHubAuthState with _$GitHubAuthState {
  factory GitHubAuthState({
    @Default(GitHubAuthStatus.initial()) final GitHubAuthStatus? status,
    String? errorMessage,
  }) = _GitHubAuthState;
}

@freezed
abstract class GitHubAuthStatus with _$GitHubAuthStatus {
  const factory GitHubAuthStatus.initial() = GitHubAuthInitial;
  const factory GitHubAuthStatus.loading() = GitHubAuthLoading;
  const factory GitHubAuthStatus.loggedIn() = GitHubAuthLoggedIn;
  const factory GitHubAuthStatus.loggedOut() = GitHubAuthLoggedOut;
  const factory GitHubAuthStatus.serverError() = GitHubAuthServerError;
  const factory GitHubAuthStatus.otherException() = GitHubAuthOtherException;
}

@freezed
abstract class GitHubAuthEvent with _$GitHubAuthEvent {
  const factory GitHubAuthEvent.validateToken() = ValidateToken;
  const factory GitHubAuthEvent.signingIn({required String code}) = SigningIn;
  const factory GitHubAuthEvent.signingOut() = SigningOut;
}
