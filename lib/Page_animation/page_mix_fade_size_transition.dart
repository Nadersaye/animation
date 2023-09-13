import 'package:flutter/material.dart';

class PageMixFadeSizeTransation extends PageRouteBuilder {
  final dynamic page;
  PageMixFadeSizeTransation(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              Animation<double> animateFade = Tween<double>(begin: 0.1, end: .9)
                  .animate(CurvedAnimation(
                      parent: animation, curve: Curves.bounceInOut));
              Animation<double> animateSize =
                  Tween<double>(begin: 0.2, end: 1).animate(animation);

              return FadeTransition(
                opacity: animateFade,
                child: Align(
                  alignment: Alignment.center,
                  child: SizeTransition(
                    sizeFactor: animateSize,
                    child: child,
                  ),
                ),
              );
            });
}
