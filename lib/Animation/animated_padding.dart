import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  final List _list = <String>[
    'assets/images/cheese.png',
    'assets/images/dog.png',
    'assets/images/jerry.png',
    'assets/images/tom.png'
  ];
  double _paddingValue = 10;
  bool _isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated padding example'),
        centerTitle: true,
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            4,
            (index) {
              return AnimatedPadding(
                  duration: const Duration(seconds: 3),
                  padding: EdgeInsets.all(_paddingValue),
                  curve: Curves.bounceOut,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                    child: Image.asset(
                      _list[index],
                    ),
                  ));
            },
          )),
      floatingActionButton: FloatingActionButton(
          child: Icon(_isExpanded ? Icons.expand : Icons.expand_less),
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
              _paddingValue = _isExpanded ? 30.0 : 10.0;
            });
          }),
    );
  }
}
