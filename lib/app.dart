import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/auth/screens/login/login_page.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<GitHubAuthBloc>().state;

    return BlocProvider(
      create: (context) => GitHubAuthBloc(),
      child: BlocListener<GitHubAuthBloc, GitHubAuthState>(
        listener: (context, state) {
          if (state is GitHubAuthLoggedOut) {
            Navigator.of(navigatorKey.currentContext!).popUntil(
              (route) => route.isFirst,
            );
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              if (auth.status is GitHubAuthLoggedIn)
                const FlutterRepoSearchPage(),
              if (auth.status is GitHubAuthLoggedOut) const LoginPage()
            ],
          ),
        ),
      ),
    );
  }
}
