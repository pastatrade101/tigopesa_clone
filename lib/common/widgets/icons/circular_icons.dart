import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width, this.height, this.size=TSizes.lg, this.onPressed, required this.icon, this.backgroundColor, this.iconColor,
  });


  final double? width;
  final double? height;
  final double? size;
  final Color? backgroundColor;
  final Color? iconColor;
  final VoidCallback? onPressed;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor!=null
              ? backgroundColor!: THelperFunctions.isDarkMode(context)?TColors.black.withOpacity(0.9)
              : TColors.white.withOpacity(0.9)),
      child: IconButton(
          onPressed: () {onPressed;}, icon: Icon(icon,size: size,),color: iconColor,),
    );
  }
}
