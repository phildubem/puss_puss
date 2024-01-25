import 'package:flutter/material.dart';
import 'package:puss_puss/common/widgets/custom_shapes/circular_container.dart';
import 'package:puss_puss/common/widgets/custom_shapes/curved_edges_widget.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class MPrimaryHeader extends StatelessWidget {
  const MPrimaryHeader({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final bool dark = MHelperFunctions.isDarkMode(context);

    return CurvedEdgeWidget(
      child: Container(
        color: dark ? MColors.primary : MColors.primary.withOpacity(0.3),
        padding: EdgeInsets.all(0),
        child: SizedBox(
          // Controls height of top curved container
          height: 230,
          child: Stack(
            children: [
              // Background Custom Shapes (Circular Contianer)
              Positioned(
                  top: -150,
                  right: -180,
                  child:
                      MCircularContainer(bg: MColors.light.withOpacity(0.1))),
              Positioned(
                  top: 80,
                  right: -280,
                  child:
                      MCircularContainer(bg: MColors.light.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
