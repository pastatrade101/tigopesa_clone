import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key, required this.itemBuilder, this.mainAxisExtent=288, required this.itemCount,
  });
  final Widget? Function(BuildContext, int ) itemBuilder;
  final double? mainAxisExtent;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      shrinkWrap: true,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent),
      itemBuilder:  itemBuilder,
    );
  }
}