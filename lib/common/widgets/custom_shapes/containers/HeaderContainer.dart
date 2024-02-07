import 'package:flutter/material.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../curve_edges/curve_edge_widget.dart';
import 'circular_container.dart';
class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        padding: const EdgeInsets.all(0.0),
        color: THelperFunctions.isDarkMode(context)?TColors.darkerGrey:TColors.primary,
        child: SizedBox(
          height: 340,
          child: Stack(children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircleShape(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircleShape(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),child
          ]),
        ),
      ),
    );
  }
}