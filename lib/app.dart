// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/auth/screens/login/login_page.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/screens/flutter_repo_search_page.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    context.read<GitHubAuthBloc>().add(const ValidateToken());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GitHubAuthBloc, GitHubAuthState>(
      listener: (context, state) {
        if (state is GitHubAuthLoggedOut || state is GitHubAuthLoggedIn) {
          Navigator.of(navigatorKey.currentContext!).popUntil(
            (route) => route.isFirst,
          );
        }
      },
      child: BlocBuilder<GitHubAuthBloc, GitHubAuthState>(
        builder: (context, state) {
          return Scaffold(
            body: Stack(
              children: [
                if (state.status is GitHubAuthLoggedIn)
                  const FlutterRepoSearchPage(),
                if (state.status is GitHubAuthLoggedOut) const LoginPage()
              ],
            ),
          );
        },
      ),
    );
  }
}
