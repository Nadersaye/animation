import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positioned example'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
              left: 0,
              top: 0,
              duration: const Duration(seconds: 3),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/cheese.png'),
              )),
          AnimatedPositioned(
              left: _isChanged ? 0 : MediaQuery.of(context).size.width - 120,
              top: 0,
              duration: const Duration(seconds: 3),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/jerry.png'),
              )),
          AnimatedPositioned(
              left: _isChanged ? 0 : MediaQuery.of(context).size.width - 200,
              top: _isChanged ? 0 : MediaQuery.of(context).size.height / 3,
              duration: const Duration(seconds: 3),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/dog.png'),
              )),
          AnimatedPositioned(
              left: 0,
              top: _isChanged ? 0 : MediaQuery.of(context).size.height - 200,
              duration: const Duration(seconds: 3),
              child: SizedBox(
                width: 120,
                height: 120,
                child: Image.asset('assets/images/tom.png'),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isChanged = !_isChanged;
          });
        },
        child: Icon(
            _isChanged ? Icons.location_on_outlined : Icons.back_hand_outlined),
      ),
    );
  }
}
