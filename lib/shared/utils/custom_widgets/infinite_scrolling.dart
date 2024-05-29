// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gitcentral/shared/utils/custom_widgets/unfocus_wrapper.dart';
import 'package:gitcentral/shared/utils/themes/light_theme.dart';

class InfiniteScrolling extends StatefulWidget {
  final ScrollController? scrollController;
  final Future<void> Function() loadItems;
  final ListView child;
  final bool? itemsLoading;
  const InfiniteScrolling({
    Key? key,
    required this.scrollController,
    required this.loadItems,
    required this.child,
    this.itemsLoading,
  }) : super(key: key);

  @override
  State<InfiniteScrolling> createState() => _InfiniteScrollingState();
}

class _InfiniteScrollingState extends State<InfiniteScrolling> {
  bool _scrollEventHandler(ScrollNotification notification) {
    UnfocusWrapper.hideKeyboard();
    final currentPosition = widget.scrollController?.position.pixels;
    final bottom = widget.scrollController?.position.maxScrollExtent;
    if (notification is ScrollEndNotification) {
      if (currentPosition == bottom) {
        // if (widget.scrollController?.position.extentAfter == 0) {
        widget.loadItems();
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NotificationListener(
          onNotification: _scrollEventHandler,
          child: widget.child,
        ),
        if (widget.itemsLoading == true)
          const Align(
            alignment: Alignment.bottomCenter,
            child: CircleAvatar(
              /// Adds outline
              backgroundColor: Colors.black,
              child: Padding(
                /// Outline thickness
                padding: EdgeInsets.all(1.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
