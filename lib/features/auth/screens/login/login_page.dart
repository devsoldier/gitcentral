// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_notifier.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/auth/screens/login_webview/github_auth_webview.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_elevated_button.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_snackbars.dart';
import 'package:gitcentral/shared/utils/custom_widgets/measure_size.dart';
import 'package:gitcentral/shared/utils/themes/light_theme.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  // GitHubAuthNotifier get authNotifier => ref.read(gitHubAuthNotifier.notifier);

  double? buttonWidth;

  bool animateOpacity = false;

  void navigationDelegate() async {
    if (!mounted) return;
    ScaffoldMessenger.of(context).clearSnackBars();
    final result = await Navigator.of(context).push(
      GitHubAuthWebview.route(),
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
    // ref.listen(gitHubAuthNotifier, (previous, next) {
    //   if (next.status is GitHubAuthServerError ||
    //       next.status is GitHubAuthOtherException) {
    //     if (!mounted) return;
    //     showErrorSnackBar(context,
    //         message: 'Failed to authorize, try again later');
    //   }
    // });
    return Scaffold(
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
    );
  }
}
