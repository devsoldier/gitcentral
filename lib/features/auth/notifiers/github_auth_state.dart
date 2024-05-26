import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_auth_state.freezed.dart';

@freezed
abstract class GitHubAuthState with _$GitHubAuthState {
  factory GitHubAuthState({
    @Default(GitHubAuthStatus.loading()) final GitHubAuthStatus? status,
    final String? code,
    final String? accessToken,
  }) = _GitHubAuthState;
}

@freezed
abstract class GitHubAuthStatus with _$GitHubAuthStatus {
  const factory GitHubAuthStatus.loading() = GitHubAuthLoading;
  const factory GitHubAuthStatus.loaded() = GitHubAuthLoaded;
  const factory GitHubAuthStatus.serverError() = GitHubAuthServerError;
  const factory GitHubAuthStatus.otherException() = GitHubAuthOtherException;
}

@freezed
abstract class GitHubAuthEvent with _$GitHubAuthEvent {
  const factory GitHubAuthEvent.signIn() = SignIn;
  const factory GitHubAuthEvent.signOut() = SignOut;
}
