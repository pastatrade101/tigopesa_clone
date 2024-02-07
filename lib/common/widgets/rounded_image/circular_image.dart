import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key, this.width=56, this.height=56,  this.padding=TSizes.sm, this.fit=BoxFit.cover, this.isNetworkImage=false, required this.image, this.overlayColor, required this.backgroundColor,
  });
  final double width,height,padding;
  final BoxFit? fit;

  final bool isNetworkImage;
  final String image;
  final Color? overlayColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width:width,
        height: height,
        padding:  EdgeInsets.all(padding),
        decoration: BoxDecoration( borderRadius: BorderRadius.circular(100),
          color: THelperFunctions.isDarkMode(context)
              ? Colors.black
              : Colors.white,),
        child:  Image(image: isNetworkImage? NetworkImage(image): AssetImage(image)as ImageProvider,),),
    );
  }
}