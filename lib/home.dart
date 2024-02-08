import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
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
      backgroundColor: TColors.accent.withOpacity(0.2),
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
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        side: const BorderSide(color: TColors.secondary),
                        backgroundColor: TColors.secondary,
                        foregroundColor: TColors.primary),
                    onPressed: () {},
                    icon: const Icon(Iconsax.wallet),
                    label: const Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Angalia Salio ',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: '(Bure)',
                          style: TextStyle(fontWeight: FontWeight.w300))
                    ])),
                  )),
              const SizedBox(
                height: TSizes.xs + 6,
              ),

                Row(
                children: [
                  MainCard(onTap: (){print('clicked');},
                      fontSize: 14,
                      text: 'Tuma Pesa',
                      backgroundColor: TColors.white,
                      image: TImages.sendMoney,
                      size: 44,
                      iconColor: TColors.primary),
                  const SizedBox(
                    width: TSizes.xs + 8,
                  ),
                  MainCard(
                    onTap: (){print('click');},
                      fontSize: 14,
                      text: 'Kutoa Pesa',
                      backgroundColor: TColors.white,
                      image: TImages.sendMoney,
                      size: 44,
                      iconColor: TColors.primary),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,

    required this.text,
    required this.size,
    required this.fontSize,
    required this.backgroundColor,
    required this.iconColor, required this.image, required this.onTap,
  });

  final String image;
  final String text;
  final double size, fontSize;
  final Color backgroundColor, iconColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.cardRadiusXs),
              boxShadow: [
            BoxShadow(
                color: TColors.grey.withOpacity(0.5),
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 1,
                blurStyle: BlurStyle.normal)
          ], color: backgroundColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image(image: AssetImage(image),width: size),SizedBox(height: 2,),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: TColors.primary, fontSize: fontSize),
              )
            ],
          ),
        ),
      ),
    );
  }
}
