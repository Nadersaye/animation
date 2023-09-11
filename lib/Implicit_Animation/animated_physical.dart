import 'package:flutter/material.dart';

class AnimatedPhysicalExample extends StatefulWidget {
  const AnimatedPhysicalExample({super.key});

  @override
  State<AnimatedPhysicalExample> createState() =>
      _AnimatedPhysicalExampleState();
}

class _AnimatedPhysicalExampleState extends State<AnimatedPhysicalExample> {
  bool _isElevetion = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated physical example'),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isElevetion = !_isElevetion;
              });
            },
            child: AnimatedPhysicalModel(
                shape: BoxShape.rectangle,
                elevation: _isElevetion ? 30 : 0,
                color: Colors.black,
                shadowColor: Colors.grey,
                curve: Curves.bounceInOut,
                duration: const Duration(seconds: 3),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Image.asset('assets/images/jerry.png'),
                )),
          ),
        ));
  }
}
