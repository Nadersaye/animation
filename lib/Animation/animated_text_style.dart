import 'package:flutter/material.dart';

class AnimationTextStyleExample extends StatefulWidget {
  const AnimationTextStyleExample({super.key});

  @override
  State<AnimationTextStyleExample> createState() =>
      _AnimationTextStyleExampleState();
}

class _AnimationTextStyleExampleState extends State<AnimationTextStyleExample> {
  double _fontSize = 20.0;
  Color _color = Colors.grey;
  //bool _bigSize = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation container'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedDefaultTextStyle(
                style: TextStyle(fontSize: _fontSize, color: _color),
                duration: const Duration(microseconds: 5000),
                child: const Text('nader sayed')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        editTextStyle(true);
                      });
                    },
                    icon: const Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        editTextStyle(false);
                      });
                    },
                    icon: const Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }

  void editTextStyle(bool x) {
    if (x == true) {
      _color = Colors.purple;
      _fontSize = 50;
    } else {
      _color = Colors.grey;
      _fontSize = 20;
    }
  }
}
