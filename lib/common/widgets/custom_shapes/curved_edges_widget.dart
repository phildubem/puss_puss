import 'package:flutter/material.dart';
import 'package:puss_puss/common/widgets/custom_shapes/curved_edges.dart';


class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    
    return ClipPath(
      clipper: MCustomCurvedEdges(),
      child: child,
    );
  }
}
