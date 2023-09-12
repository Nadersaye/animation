import 'package:flutter/material.dart';

class SizeTransitionExample extends StatefulWidget {
  const SizeTransitionExample({super.key});

  @override
  State<SizeTransitionExample> createState() => _SizeTransitionExampleState();
}

class _SizeTransitionExampleState extends State<SizeTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    _animation = Tween<double>(begin: 0, end: 1)
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
        title: const Text('Size Transition'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: startAnimation,
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            color: Colors.blue,
            child: Center(
              child: SizeTransition(
                axis: Axis.horizontal,
                axisAlignment: 1,
                sizeFactor: _animation,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                  child: Image.asset('assets/images/dog.png'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void startAnimation() {
    _controller.reset();
    _controller.forward();
  }
}
