import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitcentral/shared/services/global_messenger/global_messenger_service.dart';
import 'package:gitcentral/shared/utils/constants/constants.dart';
import 'package:gitcentral/shared/utils/themes/light_theme.dart';

showSnackBar(
  BuildContext context,
  String message, {
  int? ms,
  double? heightFactor,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.none,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * (heightFactor ?? 0.79),
          right: 20,
          left: 20),
      duration: Duration(milliseconds: ms ?? 1500),
      backgroundColor: Theme.of(context).primaryColor,
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

showSuccessSnackBar(
  BuildContext context,
  String message, {
  int? ms,
  double? heightFactor,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.none,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * (heightFactor ?? 0.79),
          right: 20,
          left: 20),
      duration: Duration(milliseconds: ms ?? 1500),
      backgroundColor: Colors.green,
      content: Row(
        children: [
          const Icon(
            Icons.check_circle_outline,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

showWarningSnackBar(
  BuildContext context, {
  String? message,
  int? ms,
  double? heightFactor,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.none,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * (heightFactor ?? 0.79),
          right: 20,
          left: 20),
      duration: Duration(milliseconds: ms ?? 1500),
      backgroundColor: Colors.orange,
      content: Row(
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message ?? 'Something went wrong. Plase try again',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

showErrorSnackBar(
  BuildContext context, {
  String? message,
  int? ms,
  double? heightFactor,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.none,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * (heightFactor ?? 0.79),
          right: 20,
          left: 20),
      duration: Duration(milliseconds: ms ?? 1500),
      backgroundColor: const Color.fromARGB(255, 242, 21, 5),
      content: Row(
        children: [
          const Icon(
            CupertinoIcons.clear_circled,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message ?? 'Unexpected error. Plase try again',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

showPersistentSnackbar(
  WidgetRef ref,
  BuildContext context,
  String? message, {
  int? ms,
  double? heightFactor,
}) {
  return SnackBar(
    content: Row(
      children: [
        Expanded(
          child: Text(
            '$message',
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            scaffoldKey.currentState?.clearSnackBars();
            ref
                .read(globalMessengerServiceProvider)
                .updateSnackbarStatus(false);
          },
          child: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        )
      ],
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: kPrimaryColor, width: 1.5),
      borderRadius: BorderRadius.circular(5),
    ),
    backgroundColor: kSecondaryColor,
    duration: const Duration(days: 365),
  );
}
