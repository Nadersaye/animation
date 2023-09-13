import 'package:flutter/material.dart';

class PageSizeTransation extends PageRouteBuilder {
  final dynamic page;
  PageSizeTransation(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionDuration: const Duration(seconds: 7),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              Animation<double> animate = Tween<double>(begin: 0.1, end: .9)
                  .animate(
                      CurvedAnimation(parent: animation, curve: Curves.easeIn));
              return Align(
                alignment: Alignment.center,
                child: SizeTransition(
                  sizeFactor: animate,
                  child: child,
                ),
              );
            });
}
