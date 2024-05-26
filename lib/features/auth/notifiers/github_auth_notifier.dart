import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'github_auth_state.dart';

final gitHubAuthNotifier = NotifierProvider.autoDispose(GitHubAuthNotifier.new);

class GitHubAuthNotifier extends AutoDisposeNotifier<GitHubAuthState> {
  @override
  GitHubAuthState build() {
    return GitHubAuthState();
  }

  void mapEventsToState(GitHubAuthEvent event) {
    event.map(
      signIn: (_) {},
      signOut: (_) {},
    );
  }
}
