import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/shared_widgets/diamond_shape_widget.dart';
import '../../core/shared_widgets/get_started_button.dart';
import '../../core/shared_widgets/onboarding_description.dart';
import '../../core/shared_widgets/onboarding_image_widget.dart';
import '../../core/shared_widgets/onboarding_title_widget.dart';
import 'animations/onboarding_animation.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late OnboardingAnimations _animations;
  bool _showTextKit = false;
  bool _isAnimationCompleted = false;

  @override
  void initState() {
    super.initState();
    _animations = OnboardingAnimations(this);

    Future.delayed(const Duration(milliseconds: 3500), () {
      setState(() {
        _showTextKit = true;
      });
    });

    _animations.controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isAnimationCompleted = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _animations.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 150.h),
            Stack(
              alignment: Alignment.center,
              children: [
                DiamondShapeWidget(_animations.diamondAnimation),
                OnboardingImageWidget(_animations.imageAnimation)
              ],
            ),
            SizedBox(height: 30.h),
            OnboardingTitleWidget(_animations.titleAnimation),
            OnboardingDescription(_showTextKit),
            GetStartedButton(_isAnimationCompleted, _animations.buttonAnimation)
          ],
        ),
      ),
    );
  }
}
