import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSliderExample extends StatefulWidget {
  const LottieSliderExample({super.key});

  @override
  State<LottieSliderExample> createState() => _LottieSliderExampleState();
}

class _LottieSliderExampleState extends State<LottieSliderExample> {
  final List _listAnimationItems = [
    'assets/animation/lottie/bird.json',
    'assets/animation/lottie/car.json',
    'assets/animation/lottie/tigger.json',
  ];
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  @override
  void dispose() {
    _stopAnimation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottie Slider Example'),
        centerTitle: true,
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        itemCount: _listAnimationItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Lottie.asset(_listAnimationItems[index],
              fit: BoxFit.fill, repeat: true, reverse: true);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            _pageController.animateToPage(value,
                duration: const Duration(seconds: 1), curve: Curves.linear);
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.animation_outlined), label: "Animation 1"),
            BottomNavigationBarItem(
                icon: Icon(Icons.brightness_medium), label: "Animation 2"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "Animation 3")
          ]),
    );
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (_currentIndex == _listAnimationItems.length - 1) {
        _pageController.animateToPage(0,
            duration: const Duration(seconds: 1), curve: Curves.bounceOut);
      } else {
        _pageController.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.linear);
      }
      _startAnimation();
    });
  }

  void _stopAnimation() {
    _pageController.dispose();
  }
}
