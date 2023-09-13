import 'package:animation/Explicit_Animation/animated_builder.dart';
import 'package:animation/Explicit_Animation/default_textstyle_transition.dart';
import 'package:animation/Explicit_Animation/fade_transition.dart';
import 'package:animation/Explicit_Animation/indexed_stack_transition.dart';
import 'package:animation/Explicit_Animation/positioned_directional_transition.dart';
import 'package:animation/Explicit_Animation/positioned_transition.dart';
import 'package:animation/Explicit_Animation/rotation_transition.dart';
import 'package:animation/Explicit_Animation/tween_animated_builder.dart';
import 'package:animation/Page_animation/page_mix_fade_size_transition.dart';
import 'package:animation/Page_animation/page_mix_scale_rotate_transition.dart';
import 'package:animation/Page_animation/to_next_page.dart';
import 'package:flutter/material.dart';
import 'Explicit_Animation/size_transition.dart';
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
import 'Page_animation/page_fade_transition.dart';
import 'Page_animation/page_rotation_transition.dart';
import 'Page_animation/page_scale_transition.dart';
import 'Page_animation/page_size_transition.dart';
import 'Page_animation/page_slide_transition.dart';

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
          children: [
            NavigateToAnimatedExample(
              text: 'Animated Align example',
              widget: const AnimatedAlignExample(),
            ),
            NavigateToAnimatedExample(
                widget: const AnimationContainerExample(),
                text: 'Animated Container example'),
            NavigateToAnimatedExample(
                widget: const AnimationTextStyleExample(),
                text: 'Animated TextStyle example'),
            NavigateToAnimatedExample(
                widget: const AnimatedOpacityExample(),
                text: 'Animated Opacity example'),
            NavigateToAnimatedExample(
                widget: const AnimatedPaddingExample(),
                text: 'Animated Padding example'),
            NavigateToAnimatedExample(
                widget: const AnimatedPhysicalExample(),
                text: 'Animated Physical model example'),
            NavigateToAnimatedExample(
                widget: const AnimatedPositionedExample(),
                text: 'Animated Positioned example'),
            NavigateToAnimatedExample(
                widget: const AnimatedPositionedDirectionalExample(),
                text: 'Animated Positioned directional example'),
            NavigateToAnimatedExample(
                widget: const AnimatedCrossFadeExample(),
                text: 'Animated Crossfade example'),
            NavigateToAnimatedExample(
                widget: const AnimatedSwitcherExample(),
                text: 'Animated Switcher example'),
            NavigateToAnimatedExample(
                widget: const AnimatedListStateExample(),
                text: 'Animated ListState example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const PositionedTransitionExample(),
                text: 'Positioned transition example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const SizeTransitionExample(),
                text: 'size transition example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const RotationTansitionExample(),
                text: 'Rotation transition example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const AnimationBuilderExample(),
                text: 'Animation builder example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const FadeTransitionExample(),
                text: 'Fade Tansition example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const PositionedDirectionalTransitionExample(),
                text: 'Positioned Directional Transition Example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const TweenAnimatedBuilderExample(),
                text: 'Tween Animated Builder Example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const DefaultTextStyleTransitionExample(),
                text: 'Default TextStyle Transition Example'),
            NavigateToAnimatedExample(
                backgroundColor: const Color.fromARGB(255, 182, 67, 67),
                widget: const IndexedStackTansitionExample(),
                text: 'Indexed Stack Tansition Example'),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageFadeTransation(const NextScreen()));
                },
                child: const Text('Page fade transation')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageScaleTransation(const NextScreen()));
                },
                child: const Text('Page scale transation')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageRotationTransation(const NextScreen()));
                },
                child: const Text('Page rotation transation')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSlideTransation(const NextScreen()));
                },
                child: const Text('Page slide transation')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageSizeTransation(const NextScreen()));
                },
                child: const Text('Page size transation')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageMixFadeSizeTransation(const NextScreen()));
                },
                child: const Text('Page Mix Fade Size Transation')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageMixScaleRotationTransation(const NextScreen()));
                },
                child: const Text('Page mix scale rotate transation')),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NavigateToAnimatedExample extends StatelessWidget {
  NavigateToAnimatedExample(
      {super.key,
      required this.widget,
      required this.text,
      this.backgroundColor});
  final Widget widget;
  final String text;
  Color? backgroundColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return widget;
          }));
        },
        child: Text(text));
  }
}
