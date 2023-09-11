import 'package:flutter/material.dart';

import 'Implicit_Animation/animated_align.dart';
import 'Implicit_Animation/animated_container.dart';
import 'Implicit_Animation/animated_crossfade.dart';
import 'Implicit_Animation/animated_liststate.dart';
import 'Implicit_Animation/animated_opacity.dart';
import 'Implicit_Animation/animated_padding.dart';
import 'Implicit_Animation/animated_physical.dart';
import 'Implicit_Animation/animated_positioned.dart';
import 'Implicit_Animation/animated_positioned_directional.dart';
import 'Implicit_Animation/animated_switcher.dart';
import 'Implicit_Animation/animated_text_style.dart';

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
            NavigateToAnimatedExample(
                widget: AnimatedPositionedDirectionalExample(),
                text: 'Animated Positioned directional example'),
            NavigateToAnimatedExample(
                widget: AnimatedCrossFadeExample(),
                text: 'Animated Crossfade example'),
            NavigateToAnimatedExample(
                widget: AnimatedSwitcherExample(),
                text: 'Animated Switcher example'),
            NavigateToAnimatedExample(
                widget: AnimatedListStateExample(),
                text: 'Animated ListState example'),
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
