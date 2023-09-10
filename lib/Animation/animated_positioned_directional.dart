import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalExample extends StatefulWidget {
  const AnimatedPositionedDirectionalExample({super.key});

  @override
  State<AnimatedPositionedDirectionalExample> createState() =>
      _AnimatedPositionedDirectionalExampleState();
}

class _AnimatedPositionedDirectionalExampleState
    extends State<AnimatedPositionedDirectionalExample> {
  double _start = 20.0;
  double _top = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animation positioned Directional'),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            AnimatedPositionedDirectional(
              duration: const Duration(seconds: 3),
              start: _start,
              top: _top,
              child: SizedBox(
                height: 120,
                width: 120,
                child: Image.asset('assets/images/jerry.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: _moveLeft,
                      child: const Icon(Icons.arrow_circle_left_outlined)),
                  ElevatedButton(
                      onPressed: _moveRight,
                      child: const Icon(Icons.arrow_circle_right_outlined)),
                  ElevatedButton(
                      onPressed: _moveTop,
                      child: const Icon(Icons.arrow_circle_up)),
                  ElevatedButton(
                      onPressed: _moveBottom,
                      child: const Icon(Icons.arrow_circle_down))
                ],
              ),
            )
          ],
        ));
  }

  void _moveLeft() {
    setState(() {
      _start -= 50;
      if (_start < 0) {
        _start = 0;
      }
    });
  }

  void _moveTop() {
    setState(() {
      _top -= 50;
      if (_top < 0) {
        _top = 0;
      }
    });
  }

  void _moveRight() {
    setState(() {
      _start += 50;
      if (_start > MediaQuery.of(context).size.width - 120) {
        _start = MediaQuery.of(context).size.width - 120;
      }
    });
  }

  void _moveBottom() {
    setState(() {
      _top += 50;
      if (_top > MediaQuery.of(context).size.height - 200) {
        _top = MediaQuery.of(context).size.height - 200;
      }
    });
  }
}
