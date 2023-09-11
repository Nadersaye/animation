import 'package:flutter/material.dart';

class SizeTransition extends StatefulWidget {
  const SizeTransition({super.key});

  @override
  State<SizeTransition> createState() => _SizeTransitionState();
}

class _SizeTransitionState extends State<SizeTransition>
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
