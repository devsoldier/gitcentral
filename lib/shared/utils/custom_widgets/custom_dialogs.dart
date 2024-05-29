import 'package:flutter/material.dart';

customDialog({
  required BuildContext context,
  String? title,
  String? content,
  String? highlightedText,
  String? buttonConfirm,
  Function()? onPressed,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        elevation: 0,
        // backgroundColor: Colors.white,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(title ?? ''),
        content: (highlightedText != null)
            ? RichText(
                text: TextSpan(
                  text: content,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                  children: [
                    TextSpan(
                      text: highlightedText,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            : Text(content ?? ''),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(120, 35),
                  ),
                  onPressed: onPressed,
                  child: const Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 35),
                    ),
                    onPressed: null,
                    child: const Text('Close'),
                  ),
                ),
              ),
            ],
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     minimumSize: const Size(120, 35),
          //   ),
          //   onPressed: onPressed,
          //   child: const Text('Confirm'),
          // ),
          // GestureDetector(
          //   onTap: Navigator.of(context).pop,
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       minimumSize: const Size(120, 35),
          //     ),
          //     onPressed: null,
          //     child: const Text('Close'),
          //   ),
          // ),
        ],
      );
    },
  );
}
