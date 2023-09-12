import 'package:flutter/material.dart';

class TweenAnimatedBuilderExample extends StatefulWidget {
  const TweenAnimatedBuilderExample({super.key});

  @override
  State<TweenAnimatedBuilderExample> createState() =>
      _TweenAnimatedBuilderExampleState();
}

class _TweenAnimatedBuilderExampleState
    extends State<TweenAnimatedBuilderExample> {
  double _opacityValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Size Transition'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: _opacityValue),
              duration: const Duration(seconds: 5),
              builder: (BuildContext context, double value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(value * 72),
                    ),
                    child: Image.asset('assets/images/dog.png'),
                  ),
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacityValue = _opacityValue == 0 ? 1.0 : 0.0;
                  });
                },
                child: const Text("Animate!!")),
          )
        ],
      ),
    );
  }
}
