import 'package:flutter/material.dart';

class PageRotationTransation extends PageRouteBuilder {
  final dynamic page;
  PageRotationTransation(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionDuration: const Duration(seconds: 3),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var animate = Tween<double>(begin: 0, end: 5).animate(
                  CurvedAnimation(
                      parent: animation, curve: Curves.fastOutSlowIn));
              return RotationTransition(
                turns: animate,
                child: child,
              );
            });
}
