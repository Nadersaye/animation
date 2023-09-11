import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  int _jerryAligned = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align example'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAligned),
            duration: const Duration(milliseconds: 400),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset('assets/images/jerry.png'),
            ),
          ),
          AnimatedAlign(
            alignment: getNextAlignment(_jerryAligned + 1),
            duration: const Duration(milliseconds: 400),
            curve: Curves.bounceOut,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset('assets/images/tom.png'),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.animation),
          onPressed: () {
            setState(() {
              _jerryAligned = _jerryAligned + 1;
            });
          }),
    );
  }

  Alignment getNextAlignment(int alignemt) {
    switch (alignemt) {
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:
        _jerryAligned = 0;
        return Alignment.topLeft;
    }
  }
}
