import 'package:flutter/material.dart';

class UnfocusWrapper extends StatelessWidget {
  const UnfocusWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  static hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: hideKeyboard,
      child: child,
    );
  }
}
