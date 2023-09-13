import 'package:flutter/material.dart';

class PageMixScaleRotationTransation extends PageRouteBuilder {
  final dynamic page;
  PageMixScaleRotationTransation(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              Animation<double> animateScale =
                  Tween<double>(begin: 0.1, end: .7).animate(CurvedAnimation(
                      parent: animation, curve: Curves.decelerate));
              Animation<double> animateRotation =
                  Tween<double>(begin: 0.0, end: 3).animate(animation);

              return ScaleTransition(
                scale: animateScale,
                child: RotationTransition(
                  turns: animateRotation,
                  child: child,
                ),
              );
            });
}
