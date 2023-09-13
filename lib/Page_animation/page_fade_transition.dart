import 'package:flutter/material.dart';

class PageFadeTransation extends PageRouteBuilder {
  final dynamic page;
  PageFadeTransation(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionDuration: const Duration(seconds: 5),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return Align(
                alignment: Alignment.center,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            });
}
