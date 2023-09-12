import 'package:flutter/material.dart';

class DefaultTextStyleTransitionExample extends StatefulWidget {
  const DefaultTextStyleTransitionExample({super.key});

  @override
  State<DefaultTextStyleTransitionExample> createState() =>
      _DefaultTextStyleTransitionExampleState();
}

class _DefaultTextStyleTransitionExampleState
    extends State<DefaultTextStyleTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animation = TextStyleTween(
      begin: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
      end: const TextStyle(
          fontSize: 42, fontWeight: FontWeight.bold, color: Colors.purple),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
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
          title: const Text('Default TextStyle Transition Example'),
          centerTitle: true,
        ),
        body: Center(
          child: DefaultTextStyleTransition(
              style: _animation, child: const Text('nader sayed')),
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
