import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    this.showBackground=true,
    this.showBorder=true,
    required this.text,
    this.icon=Iconsax.search_normal, this.onTap,  this.padding= const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
  });

  final bool showBackground, showBorder;
  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding:   padding,
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
            color: showBackground
                ? isDark
                    ? TColors.dark
                    : TColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder? Border.all(color: TColors.grey):null),
        child: Row(
          children: [
            Icon(
              icon,
              color: TColors.darkGrey,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
