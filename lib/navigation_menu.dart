import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import 'home.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: darkMode ? TColors.primary : TColors.primary,
          indicatorColor: darkMode
              ? TColors.secondary
              : TColors.secondary,
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.home,color: Colors.white, semanticLabel: 'Home'),
              label: 'Nyumbani',
            ),
            NavigationDestination(
                icon: Icon(Iconsax.receipt,color: Colors.white,), label: 'Jihudumie'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;
  final screens = [
    const Home(

    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
