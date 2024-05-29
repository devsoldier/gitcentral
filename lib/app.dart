import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_notifier.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/auth/screens/login/login_page.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/pages/flutter_repo_list_page.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/screens/flutter_repo_search_page.dart';
import 'package:gitcentral/shared/services/storage/sharedpref_storage_service.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(gitHubAuthNotifier);

    ref.listen(gitHubAuthNotifier, (previous, next) {
      if (next.status is GitHubAuthLoggedOut) {
        /// Remove user's current page until this page
        Navigator.of(navigatorKey.currentContext!).popUntil(
          (route) => route.isFirst,
        );
      }
    });

    return Scaffold(
        body: Stack(
      children: [
        if (auth.status is GitHubAuthLoggedIn) const FlutterRepoSearchPage(),
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       const Text(
        //         'Logged in',
        //       ),
        //       ElevatedButton(
        //           onPressed: () {
        //             ref
        //                 .read(gitHubAuthNotifier.notifier)
        //                 .mapEventsToState(const SigningOut());
        //           },
        //           child: const Text('Revoke'))
        //     ],
        //   ),
        // ),
        if (auth.status is GitHubAuthLoggedOut) const LoginPage()
      ],
    ));
  }
}
