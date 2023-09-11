import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  const PositionedTransitionExample({super.key});

  @override
  State<PositionedTransitionExample> createState() =>
      _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState
    extends State<PositionedTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _jerryAnimation;
  late Animation<RelativeRect> _tomAnimation;
  late Animation<RelativeRect> _spikeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
    _jerryAnimation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(300, 300, 0, 0))
        .animate(_controller);
    _tomAnimation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(150, 150, 0, 0))
        .animate(_controller);
    _spikeAnimation = RelativeRectTween(
            begin: const RelativeRect.fromLTRB(0, 0, 0, 0),
            end: const RelativeRect.fromLTRB(50, 50, 0, 0))
        .animate(_controller);
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
        title: const Text('Positioned Transition'),
        centerTitle: true,
      ),
      body: Stack(children: [
        PositionedTransition(
            rect: _spikeAnimation,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.grey,
              child: Image.asset('assets/images/dog.png'),
            )),
        PositionedTransition(
            rect: _tomAnimation,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Image.asset('assets/images/tom.png'),
            )),
        PositionedTransition(
            rect: _jerryAnimation,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: Image.asset('assets/images/jerry.png'),
            )),
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
