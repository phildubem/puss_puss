import 'package:flutter/material.dart';

import '../../../../../common/widgets/circular_container.dart';
import '../../../../../common/widgets/curved_edges_widget.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/helper_function.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = MHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgeWidget(child: Container(
        color: dark ? MColors.primary : MColors.primary.withOpacity(0.85),
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 250,
          child: Stack(
            children: [
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
            ],
          ),
        ),
      ),),
            
          ],
        ),
      ),
    );
  }
}

