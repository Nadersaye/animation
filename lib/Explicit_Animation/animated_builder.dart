import 'dart:math';

import 'package:flutter/material.dart';

class AnimationBuilderExample extends StatefulWidget {
  const AnimationBuilderExample({super.key});

  @override
  State<AnimationBuilderExample> createState() =>
      _AnimationBuilderExampleState();
}

class _AnimationBuilderExampleState extends State<AnimationBuilderExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rotation by Animation Builder Transition'),
          centerTitle: true,
        ),
        body: Center(
          child: AnimatedBuilder(
              animation: _animation,
              builder: (context, widget) {
                return Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                    child: Image.asset('assets/images/dog.png'),
                  ),
                );
              }),
        ));
  }
}
