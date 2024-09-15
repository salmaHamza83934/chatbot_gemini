import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class DiamondShapeWidget extends StatelessWidget {
  Animation<double> diamondAnimation;
  DiamondShapeWidget(this.diamondAnimation, {super.key});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: diamondAnimation,
      child: Transform.rotate(
        angle: -math.pi / 10,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          height: 250.h,
          width: 250.w,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                Color(0xFFFAE4D5),
                Color(0xFFC8F4F6),
                Color(0xFFA5E4EB),
                Color(0xFF5BDAE3),
              ],
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
    );
  }
}
