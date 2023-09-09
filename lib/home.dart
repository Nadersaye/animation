import 'package:animation/Animation/animated_align.dart';
import 'package:animation/Animation/animated_opacity.dart';
import 'package:animation/Animation/animated_text_style.dart';
import 'package:flutter/material.dart';

import 'Animation/animated_container.dart';
import 'Animation/animated_padding.dart';
import 'Animation/animated_physical.dart';
import 'Animation/animated_positioned.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            NavigateToAnimatedExample(
              text: 'Animated Align example',
              widget: AnimatedAlignExample(),
            ),
            NavigateToAnimatedExample(
                widget: AnimationContainerExample(),
                text: 'Animated Container example'),
            NavigateToAnimatedExample(
                widget: AnimationTextStyleExample(),
                text: 'Animated TextStyle example'),
            NavigateToAnimatedExample(
                widget: AnimatedOpacityExample(),
                text: 'Animated Opacity example'),
            NavigateToAnimatedExample(
                widget: AnimatedPaddingExample(),
                text: 'Animated Padding example'),
            NavigateToAnimatedExample(
                widget: AnimatedPhysicalExample(),
                text: 'Animated Physical model example'),
            NavigateToAnimatedExample(
                widget: AnimatedPositionedExample(),
                text: 'Animated Positioned example'),
          ],
        ),
      ),
    );
  }
}

class NavigateToAnimatedExample extends StatelessWidget {
  const NavigateToAnimatedExample(
      {super.key, required this.widget, required this.text});
  final Widget widget;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return widget;
          }));
        },
        child: Text(text));
  }
}
