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
