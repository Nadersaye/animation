import 'package:flutter/material.dart';

class RotationTansitionExample extends StatefulWidget {
  const RotationTansitionExample({super.key});

  @override
  State<RotationTansitionExample> createState() =>
      _RotationTansitionExampleState();
}

class _RotationTansitionExampleState extends State<RotationTansitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    _animation = Tween<double>(begin: 0, end: 10)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.bounceOut));
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
          child: RotationTransition(
            turns: _animation,
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
