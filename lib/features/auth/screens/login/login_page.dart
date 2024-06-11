// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/auth/screens/login_webview/github_auth_webview.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_elevated_button.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_snackbars.dart';
import 'package:gitcentral/shared/utils/custom_widgets/measure_size.dart';
import 'package:gitcentral/shared/utils/themes/light_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double? buttonWidth;

  bool animateOpacity = false;

  void navigationDelegate() async {
    if (!mounted) return;
    ScaffoldMessenger.of(context).clearSnackBars();
    final result = await Navigator.of(context).push(
      GitHubAuthWebview.route(
        bloc: BlocProvider.of<GitHubAuthBloc>(context),

        /// Alternative
        // onCodeReceived: (code) {
        //   context.read<GitHubAuthBloc>().add(SigningIn(code: code));
        // },
      ),
    );

    if (result == null || result.toString().contains('access_denied')) {
      if (!mounted) return;
      showWarningSnackBar(context, message: 'Sign In Cancelled');
    } else if (result is Exception) {
      if (!mounted) return;
      showErrorSnackBar(context, message: result.toString());
    } else if (result == false) {
      if (!mounted) return;
      showErrorSnackBar(context);
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      setState(() {
        animateOpacity = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<GitHubAuthBloc>(context),
      child: BlocListener<GitHubAuthBloc, GitHubAuthState>(
        listener: (context, state) {
          if (state.status is GitHubAuthServerError ||
              state.status is GitHubAuthOtherException) {
            if (!mounted) return;
            showErrorSnackBar(context,
                message: 'Failed to authorize, try again later');
          }
          if (state.status is GitHubAuthLoggedIn) {
            Navigator.of(navigatorKey.currentContext!).popUntil(
              (route) => route.isFirst,
            );
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              Center(
                child: MeasureSize(
                  onChange: (size) {
                    if (!mounted) return;
                    setState(() {
                      buttonWidth = size.width;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedOpacity(
                        duration: opacityDuration,
                        opacity: (animateOpacity) ? 1 : 0,
                        child: CustomElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kBackgroundColor,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  height: 50,
                                  'assets/images/github_vector.png',
                                ),
                              ),
                              const Text(
                                'Login With GitHub',
                              ),
                            ],
                          ),
                          onPressed: () async => navigationDelegate(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
