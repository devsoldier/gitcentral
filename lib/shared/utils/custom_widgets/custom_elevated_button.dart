// ignore: unused_import
import 'dart:developer';

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final void Function()? onPressed;
  final Widget child;
  final ButtonStyle? style;
  final double? widthFactor;
  final double? width;
  const CustomElevatedButton({
    Key? key,
    this.onPressed,
    required this.child,
    this.style,
    this.widthFactor,
    this.width,
  }) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton>
    with TickerProviderStateMixin {
  bool isPressed = false;
  double horizontalPadding = 8.0;
  Offset offset = const Offset(5, 5);

  static const animationDuration = Duration(milliseconds: 100);

  Future<void> pressedOrReleaseAnimation() async {
    if (!mounted) return;
    setState(() {
      isPressed = !isPressed;
    });
    await Future.delayed(animationDuration);
  }

  Future<void> onTap() async {
    await pressedOrReleaseAnimation();
    await pressedOrReleaseAnimation();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 58,
      width: widget.width ?? screenWidth * (widget.widthFactor ?? 1.0),
      child: Stack(
        children: [
          /// Enabled State
          if (widget.onPressed != null)
            Positioned(
              top: offset.dx,
              left: offset.dy,
              child: SizedBox(
                height: 53,
                width:
                    widget.width ?? screenWidth * (widget.widthFactor ?? 1.0),
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
          if (widget.onPressed != null)
            AnimatedPositioned(
              top: isPressed ? offset.dx : 0,
              left: isPressed ? offset.dy : 0,
              duration: animationDuration,
              child: SizedBox(
                height: 53,
                width:
                    widget.width ?? screenWidth * (widget.widthFactor ?? 1.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: GestureDetector(
                    onTapDown: (_) async {
                      await pressedOrReleaseAnimation();
                    },
                    onTapUp: (_) async {
                      await pressedOrReleaseAnimation();
                    },
                    onTapCancel: () async {
                      await pressedOrReleaseAnimation();
                    },
                    child: ElevatedButton(
                      style: widget.style,
                      onPressed: (widget.onPressed != null)
                          ? () async {
                              await onTap();
                              if (widget.onPressed == null) return;
                              widget.onPressed!();
                            }
                          : null,
                      child: widget.child,
                    ),
                  ),
                ),
              ),
            ),

          /// Disabled State
          if (widget.onPressed == null)
            Positioned(
              top: offset.dx,
              left: offset.dy,
              child: SizedBox(
                height: 53,
                width: screenWidth * (widget.widthFactor ?? 1.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(side: BorderSide.none),
                    onPressed: null,
                    child: widget.child,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
