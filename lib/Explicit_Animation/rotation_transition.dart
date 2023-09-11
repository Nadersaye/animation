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
