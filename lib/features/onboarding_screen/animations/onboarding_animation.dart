import 'package:flutter/animation.dart';

class OnboardingAnimations {
  late final AnimationController controller;
  late final Animation<double> diamondAnimation;
  late final Animation<double> imageAnimation;
  late final Animation<double> titleAnimation;
  late final Animation<double> buttonAnimation;

  OnboardingAnimations(TickerProvider vsync) {
    controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: vsync,
    )..forward();

    diamondAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 0.15, curve: Curves.easeInOutQuad),
    );

    imageAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.13, 0.3, curve: Curves.easeIn),
    );

    titleAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.35, 0.45, curve: Curves.easeIn),
    );

    buttonAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.9, 1, curve: Curves.easeIn),
    );
  }

  void dispose() {
    controller.dispose();
  }
}
