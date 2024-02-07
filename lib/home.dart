import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        showBackArrow: false,
        title: Image(
          image: const AssetImage(TImages.tigologo),
          width: THelperFunctions.screenWidth() * 0.5,
        ),
        backgroundColor: TColors.primary,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: TSizes.xs),
            child: Icon(
              Iconsax.star,
              color: TColors.secondary.withOpacity(0.8),
              size: TSizes.iconLg,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: TSizes.defaultSpace),
            child: Icon(
              Iconsax.notification,
              color: TColors.secondary.withOpacity(0.8),
              size: TSizes.iconLg,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: TSizes.sm, vertical: TSizes.sm),
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: TColors.secondary,side: const BorderSide(color: TColors.secondary),foregroundColor: TColors.primary),
                    onPressed: () {},
                    child: const Text.rich(
                        TextSpan(children: [TextSpan(text: 'Angalia Salio'),TextSpan(text: '( Bure)',style: TextStyle(fontWeight: FontWeight.w300))])),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
