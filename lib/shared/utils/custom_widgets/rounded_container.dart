import 'package:flutter/material.dart';
import 'package:gitcentral/shared/utils/themes/light_theme.dart';

class RoundedContainer extends StatelessWidget {
  final Color? color;
  final double? height;
  final double? width;
  final Widget? child;
  final Alignment? alignment;
  final double? radius;
  final BoxShadow? boxShadow;
  final double? padding;
  final double? bottommargin;
  const RoundedContainer({
    Key? key,
    this.color,
    this.height,
    this.width,
    this.child,
    this.alignment,
    this.radius,
    this.boxShadow,
    this.padding,
    this.bottommargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottommargin ?? 0),
      padding: EdgeInsets.all(padding ?? 0),
      alignment: alignment,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 10),
        ),
        boxShadow: [
          boxShadow ??
              BoxShadow(
                offset: const Offset(-1, 3),
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 4,
              ),
        ],
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}

class RoundedBorderedContainer extends StatelessWidget {
  final Color? borderColor;
  final double? borderWidth;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final Widget? child;
  final Alignment? alignment;
  final double? radius;
  final BoxShadow? boxShadow;
  const RoundedBorderedContainer({
    Key? key,
    this.borderColor,
    this.borderWidth,
    this.backgroundColor,
    this.height,
    this.width,
    this.child,
    this.alignment,
    this.radius,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.surface,
        border: Border.all(
            color: borderColor ?? kPrimaryColor, width: borderWidth ?? 2.0),
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 10),
        ),
        boxShadow: [
          boxShadow ??
              BoxShadow(
                offset: const Offset(-1, 3),
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 4,
              ),
          // const BoxShadow(
          //   color: kGreyShade1,
          //   spreadRadius: 4,
          //   blurRadius: 10,
          // ),
        ],
      ),
      height: height,
      width: width,
      child: child,
    );
  }
}
