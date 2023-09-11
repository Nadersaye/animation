import 'package:flutter/material.dart';

class TweenAnimatedBuilderExample extends StatefulWidget {
  const TweenAnimatedBuilderExample({super.key});

  @override
  State<TweenAnimatedBuilderExample> createState() =>
      _TweenAnimatedBuilderExampleState();
}

class _TweenAnimatedBuilderExampleState
    extends State<TweenAnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
