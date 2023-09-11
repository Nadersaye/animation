import 'package:flutter/material.dart';

class PositionedDirectionalTransitionExample extends StatefulWidget {
  const PositionedDirectionalTransitionExample({super.key});

  @override
  State<PositionedDirectionalTransitionExample> createState() =>
      _PositionedDirectionalTransitionExampleState();
}

class _PositionedDirectionalTransitionExampleState
    extends State<PositionedDirectionalTransitionExample>
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
