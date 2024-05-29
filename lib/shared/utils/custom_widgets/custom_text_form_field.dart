// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final double? width;
  final double? widthFactor;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;

  const CustomTextFormField({
    Key? key,
    this.width,
    this.widthFactor,
    required this.focusNode,
    this.validator,
    required this.controller,
    this.decoration,
    this.onChanged,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isPressed = false;
  double horizontalPadding = 8.0;

  void animateFormIsListened() {
    if (!mounted) return;
    setState(() {
      isPressed = widget.focusNode?.hasFocus ?? false;
    });
  }

  @override
  void initState() {
    widget.focusNode?.addListener(animateFormIsListened);
    super.initState();
  }

  @override
  void dispose() {
    widget.focusNode?.removeListener(animateFormIsListened);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 60,
      width: widget.width ?? screenWidth * (widget.widthFactor ?? 1.0),
      child: Stack(
        children: [
          Positioned(
            top: 7,
            left: 0,
            child: SizedBox(
              height: 53,
              width: widget.width ?? screenWidth * (widget.widthFactor ?? 1.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            top: !isPressed ? 7 : 1,
            left: !isPressed ? 0 : -5,
            duration: const Duration(milliseconds: 100),
            child: SizedBox(
              height: 53,
              width: widget.width ?? screenWidth * (widget.widthFactor ?? 1.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: TextFormField(
                  controller: widget.controller,
                  validator: widget.validator,
                  focusNode: widget.focusNode,
                  decoration: widget.decoration,
                  onChanged: widget.onChanged,
                  onFieldSubmitted: widget.onFieldSubmitted,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
