import 'package:flutter/material.dart';

class PageScaleTransation extends PageRouteBuilder {
  final dynamic page;
  PageScaleTransation(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionDuration: const Duration(seconds: 3),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            });
}
