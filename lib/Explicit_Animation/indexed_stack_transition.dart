import 'package:flutter/material.dart';

class IndexedStackTansitionExample extends StatefulWidget {
  const IndexedStackTansitionExample({super.key});

  @override
  State<IndexedStackTansitionExample> createState() =>
      _IndexedStackTansitionExampleState();
}

class _IndexedStackTansitionExampleState
    extends State<IndexedStackTansitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10))
          ..forward();
    _opacityAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceOut);
    _scaleAnimation = CurvedAnimation(
        parent: _controller, curve: Curves.easeInOutCubicEmphasized);
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
          title: const Text('Indexed Stack Tansition Example'),
          centerTitle: true,
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: [
            FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Container(
                  color: Colors.grey,
                  child: Image.asset('assets/images/dog.png'),
                ),
              ),
            ),
            FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Container(
                  color: Colors.blue,
                  child: Image.asset('assets/images/tom.png'),
                ),
              ),
            ),
            FadeTransition(
              opacity: _opacityAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: Container(
                  color: Colors.amber,
                  child: Image.asset('assets/images/jerry.png'),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: goToNextIndex,
          child: const Icon(Icons.arrow_downward_outlined),
        ));
  }

  void goToNextIndex() {
    setState(() {
      _currentIndex = _currentIndex + 1;
      if (_currentIndex == 3) {
        _currentIndex = 0;
      }
      _controller.reset();
      _controller.forward();
    });
  }
}
