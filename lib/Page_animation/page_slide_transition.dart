import 'package:flutter/material.dart';

class PageSlideTransation extends PageRouteBuilder {
  final dynamic page;
  PageSlideTransation(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => page,
            transitionDuration: const Duration(seconds: 3),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var animate = Tween<double>(begin: 0, end: 1).animate(
                  CurvedAnimation(
                      parent: animation, curve: Curves.fastOutSlowIn));
              return SlideTransition(
                position: animate.drive(Tween<Offset>(
                    begin: const Offset(-1, 0), end: Offset.zero)),
                child: child,
              );
            });
}
