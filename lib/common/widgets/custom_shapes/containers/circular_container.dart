import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class CircleShape extends StatelessWidget {
  const CircleShape({
    super.key,
    this.width,
    this.height,
    this.radius = 400,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.child,
    required this.backgroundColor,
    this.margin,
    this.showBorder = false,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
          border: showBorder ? Border.all(width: 1, color: TColors.grey) : null,
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor),
      child: child,
    );
  }
}
