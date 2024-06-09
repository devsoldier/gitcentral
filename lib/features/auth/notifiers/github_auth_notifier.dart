// // ignore: unused_import
// import 'dart:developer';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:gitcentral/features/auth/services/github_auth_service.dart';
// import 'package:gitcentral/shared/services/storage/sharedpref_storage_service.dart';
// import 'package:gitcentral/shared/services/storage/storage_service.dart';
// import 'package:gitcentral/shared/utils/helpers/debouncer.dart';

// import 'github_auth_state.dart';

// final gitHubAuthNotifier =
//     NotifierProvider.autoDispose<GitHubAuthNotifier, GitHubAuthState>(
//         GitHubAuthNotifier.new);

// class GitHubAuthNotifier extends AutoDisposeNotifier<GitHubAuthState> {
//   @override
//   GitHubAuthState build() {
//     mapEventsToState(const ValidateToken());
//     return GitHubAuthState();
//   }

//   StorageService get storageService =>
//       ref.read(sharedPrefsStorageServiceProvider);

//   GitHubAuthService get authService => ref.read(gitHubAuthServiceProvider);

//   dynamic mapEventsToState(GitHubAuthEvent event) {
//     return event.map(
//       signingIn: (signingIn) => signIn(signingIn.code),
//       signingOut: (_) => signOut(),
//       validateToken: (_) => validateToken(),
//     );
//   }

//   void signIn(String code) async {
//     try {
//       final result = await authService.signIn(code);
//       if (result.isSuccess) {
//         state = state.copyWith(status: const GitHubAuthLoggedIn());
//       } else if (result.isFailure) {
//         state = state.copyWith(status: const GitHubAuthServerError());
//       } else {
//         state = state.copyWith(status: const GitHubAuthOtherException());
//       }
//     } catch (e, s) {
//       state = state.copyWith(status: const GitHubAuthOtherException());
//       throw Exception('signIn: $e\n$s');
//     }
//   }

//   /// Revoke token
//   void signOut() async {
//     try {
//       await storageService.clearToken();
//       state = state.copyWith(status: const GitHubAuthLoggedOut());
//     } catch (e, s) {
//       state = state.copyWith(status: const GitHubAuthLoggedOut());
//       throw Exception('signOut: $e\n$s');
//     }
//   }

//   void validateToken() async {
//     try {
//       await debouncer();
//       final token = await storageService.loadAccessToken();
//       if (token == null || token.isEmpty) {
//         state = state.copyWith(status: const GitHubAuthLoggedOut());
//       } else {
//         state = state.copyWith(status: const GitHubAuthLoggedIn());
//       }
//     } catch (e, s) {
//       state = state.copyWith(status: const GitHubAuthLoggedOut());
//       throw Exception('validateToken: $e\n$s');
//     }
//   }
// }
