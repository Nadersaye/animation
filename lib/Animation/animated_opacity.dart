import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedOpacity(
                duration: const Duration(seconds: 3),
                curve: Curves.bounceIn,
                opacity: _visible ? 1 : 0,
                child: const Text('Tom and Jerry')),
            AnimatedOpacity(
                duration: const Duration(seconds: 3),
                opacity: _visible ? 1 : 0,
                child: const SizedBox(
                    width: 200,
                    height: 200,
                    child:
                        Image(image: AssetImage('assets/images/jerry.png')))),
            AnimatedOpacity(
                opacity: _visible ? 1 : 0,
                duration: const Duration(seconds: 3),
                child: const SizedBox(
                    width: 200,
                    height: 200,
                    child: Image(image: AssetImage('assets/images/tom.png'))))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.animation),
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          }),
    );
  }
}
