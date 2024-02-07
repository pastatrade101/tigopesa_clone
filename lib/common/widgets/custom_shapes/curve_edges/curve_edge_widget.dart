import 'package:flutter/material.dart';

import 'curve_edges.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: CurveEdges() ,

        child: child
    );
  }
}