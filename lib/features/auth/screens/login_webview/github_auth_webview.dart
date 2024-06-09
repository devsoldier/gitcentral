// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_bloc.dart';
import 'package:gitcentral/features/auth/notifiers/github_auth_state.dart';
import 'package:gitcentral/features/auth/services/github_auth_service.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/custom_widgets/custom_loading_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GitHubAuthWebview extends StatefulWidget {
  const GitHubAuthWebview({super.key});

  static PageRoute route() {
    return MaterialPageRoute(
      builder: (context) {
        return const GitHubAuthWebview();
      },
      settings: const RouteSettings(name: '/githubauthwebview'),
    );
  }

  @override
  State<GitHubAuthWebview> createState() => _GitHubAuthWebviewState();
}

class _GitHubAuthWebviewState extends State<GitHubAuthWebview> {
  late final WebViewController controller;
  final authService = GetIt.I<GitHubAuthService>();

  bool showLoading = true;

  void initWebViewController() async {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent(userAgent)
      ..clearCache()
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (String url) {
            if (!mounted) return;
            setState(() {
              showLoading = false;
            });
          },
          onNavigationRequest: (NavigationRequest request) async {
            if (mounted) {
              setState(() {
                showLoading = true;
              });
            }

            if (request.url.contains('error=')) {
              Navigator.of(context).pop(
                Exception(Uri.parse(request.url).queryParameters['error']),
              );
            } else if (request.url.startsWith(redirectUrl)) {
              context.read<GitHubAuthBloc>().add(
                    SigningIn(
                        code: request.url
                            .replaceFirst('$redirectUrl?code=', '')
                            .trim()),
                  );

              if (mounted) {
                setState(() {
                  showLoading = true;
                });
                Navigator.of(context).pop(true);
              }
            }

            setState(() {
              showLoading = true;
            });

            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse(
          authService.getAuthUrl(),
        ),
      );
  }

  @override
  void initState() {
    initWebViewController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          if (showLoading)
            const CustomLoadingIndicator(blur: 0)
          else ...[
            WebViewWidget(
              controller: controller,
            )
          ],
        ],
      ),
    );
  }
}
