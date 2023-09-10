import 'package:flutter/material.dart';

class AnimatedListStateExample extends StatefulWidget {
  const AnimatedListStateExample({super.key});

  @override
  State<AnimatedListStateExample> createState() =>
      _AnimatedListStateExampleState();
}

class _AnimatedListStateExampleState extends State<AnimatedListStateExample> {
  double _radius = 20.0;
  Color _color = Colors.grey;
  double _width = 100;
  double _height = 100;
  bool _bigSize = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation container'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            _bigSize = !_bigSize;
            setState(() {
              // _bigSize = !_bigSize;
              editContainer(_bigSize);
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 5500),
            width: _width,
            height: _height,
            curve: Curves.bounceInOut,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_radius), color: _color),
            child: Image.asset('assets/images/jerry.png'),
          ),
        ),
      ),
    );
  }

  void editContainer(bool x) {
    if (x == true) {
      _radius = 40.0;
      _color = Colors.orangeAccent;
      _width = 300;
      _height = 300;
    } else {
      _radius = 20.0;
      _color = Colors.grey;
      _width = 100;
      _height = 100;
    }
  }
}
