import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/device/device_utility.dart';

import '../../../utils/constants/sizes.dart';

class CustomAppbar  extends StatelessWidget implements PreferredSize {
  const CustomAppbar({super.key, this.title, this.leadingIcon,
      this.actions, this.leadingOnPressed,  this.showBackArrow=false, required this.backgroundColor,
      });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: () => leadingOnPressed,
                    icon: Icon(leadingIcon),
                  )
                : null,title: title,actions: actions,
      ),
    );
  }




  @override
  // TODO: implement child
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight()+8);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}

