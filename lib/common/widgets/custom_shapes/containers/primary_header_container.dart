import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import 'circular_container.dart';
import '../curved_edges/curved_edges_widget.dart';


class TTPrimaryHeaderContainer extends StatelessWidget {
  const TTPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
        child: Container(
          color: TColors.primary,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 200,
                  right: -200,
                  child: TCircularContainer(
                      backgroundColor: TColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
    );
  }
}
