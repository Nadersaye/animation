import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _changeWidget = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation CrossFade'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _changeWidget = !_changeWidget;
            });
          },
          child: AnimatedCrossFade(
            firstChild: Container(
              width: 120,
              height: 120,
              color: Colors.amber,
              child: Image.asset('assets/images/jerry.png'),
            ),
            secondChild: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
              child: Image.asset('assets/images/dog.png'),
            ),
            crossFadeState: _changeWidget
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(seconds: 3),
            firstCurve: Curves.bounceIn,
            secondCurve: Curves.bounceInOut,
          ),
        ),
      ),
    );
  }
}
