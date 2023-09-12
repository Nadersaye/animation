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
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _animation = RelativeRectTween(
      begin: RelativeRect.fromDirectional(
          textDirection: TextDirection.ltr,
          start: 0,
          top: 0,
          end: 0,
          bottom: 0),
      end: RelativeRect.fromDirectional(
          textDirection: TextDirection.ltr,
          start: 100,
          top: 100,
          end: 0,
          bottom: 0),
    ).animate(_controller);
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
        title: const Text('Positioned Directional Transition Example'),
        centerTitle: true,
      ),
      body: Stack(children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return PositionedDirectional(
              start: _animation.value.left,
              top: _animation.value.top,
              end: _animation.value.right,
              bottom: _animation.value.bottom,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.grey,
                child: Image.asset('assets/images/dog.png'),
              ),
            );
          },
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _controller.reset();
                      _controller.forward();
                    },
                    child: const Icon(Icons.start)),
                ElevatedButton(
                    onPressed: () {
                      _controller.reverse();
                    },
                    child: const Icon(Icons.close))
              ],
            ))
      ]),
    );
  }
}
