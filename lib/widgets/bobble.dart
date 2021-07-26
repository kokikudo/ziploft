import 'package:flutter/material.dart';
import 'package:ziploft/constraints.dart';

class Bobble extends StatelessWidget {
  const Bobble(
      {Key? key,
      required this.isGradient,
      this.topGradientColor,
      this.bottomGradientColor,
      required this.width,
      required this.height,
      required this.isShadow,
      required this.boxContent,
      this.backgroundColor})
      : super(key: key);

  final bool isGradient;
  final Color? backgroundColor;
  final Color? topGradientColor;
  final Color? bottomGradientColor;
  final double width;
  final double height;
  final bool isShadow;
  final Widget boxContent;

  @override
  Widget build(BuildContext context) {
    double radius = height / 2;
    return Container(
      decoration: BoxDecoration(
        color: isGradient ? null : backgroundColor,
        gradient: isGradient
            ? kBubbleGradient(topGradientColor!, bottomGradientColor!)
            : null,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: isShadow ? [kBubbleShadowStyle()] : null,
      ),
      height: height,
      width: width,
      child: Center(
        child: boxContent,
      ),
    );
  }
}
