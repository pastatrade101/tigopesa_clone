import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key, required this.image, required this.title, required this.textColor, this.onTap, this.backgroundColor,
  });
  final String image,title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(TSizes.sm),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: backgroundColor??(THelperFunctions.isDarkMode(context)?TColors.black:TColors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child:  Image(
                image: AssetImage(
                    image
                ),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            SizedBox(width:55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}