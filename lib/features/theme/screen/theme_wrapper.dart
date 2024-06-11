import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_bloc.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_list/notifiers/flutter_repo_bloc.dart';
import 'package:gitcentral/features/flutter_repo/screens/flutter_repo_search/notifiers/flutter_repo_search_bloc.dart';
import 'package:gitcentral/features/maintenance/notifiers/maintenance_check_bloc.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/themes/light_theme.dart';

class ThemeWrapper extends StatelessWidget {
  final Widget child;
  const ThemeWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MaintenanceCheckBloc>(
          create: (context) => MaintenanceCheckBloc(),
        ),
        BlocProvider<GitHubAuthBloc>(
          create: (context) => GitHubAuthBloc(),
        ),
        BlocProvider<FlutterRepoBloc>(
          create: (context) => FlutterRepoBloc(),
        ),
        BlocProvider<FlutterRepoSearchBloc>(
          create: (context) => FlutterRepoSearchBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'GitHub Central',
        // Additional theme can be added here
        theme: kAppLightTheme,
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: scaffoldKey,
        home: child,
      ),
    );
  }
}
