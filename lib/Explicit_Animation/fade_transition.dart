import 'package:flutter/material.dart';

class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({super.key});

  @override
  State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..forward();
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
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
          title: const Text('Rotation Transition'),
          centerTitle: true,
        ),
        body: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: Image.asset('assets/images/dog.png'),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: startAnimation,
          child: const Icon(Icons.play_arrow),
        ));
  }

  void startAnimation() {
    _controller.reset();
    _controller.forward();
  }
}
