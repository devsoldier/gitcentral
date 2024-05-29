import 'package:flutter/material.dart';

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
    return MaterialApp(
      title: 'GitHub Central',
      // Additional theme can be added here
      theme: kAppLightTheme,
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldKey,
      home: child,
    );
  }
}
