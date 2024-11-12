import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginCirclesAnimation extends StatelessWidget {
  AnimationController controller;
  LoginCirclesAnimation(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Top left circle
        Positioned(
          right: sin(controller.value * 2 * pi) * 50,
          // Moves with sin wave
          bottom: sin(controller.value * 2 * pi) * 50,
          child: _buildBigCircle(),
        ),
        // Top right circle
        Positioned(
          right: sin(controller.value * 2 * pi + pi / 2) * 100,
          // Different phase
          bottom: cos(controller.value * 2 * pi) * 100,
          child: _buildSmallCircle(),
        ),
        Positioned(
          right: cos(controller.value * 2 * pi + pi / 3) * 70,
          bottom: sin(controller.value * 2 * pi + pi / 4) * 80,
          child: _buildBigCircle(),
        ),
        Positioned(
          left: cos(controller.value * 2 * pi + pi / 2) * 60,
          top: cos(controller.value * 2 * pi) * 60,
          child: _buildBigCircle(),
        ),
        // Bottom left circle
        Positioned(
          left: cos(controller.value * 2 * pi) * 60,
          top: sin(controller.value * 2 * pi) * 60,
          child: _buildSmallCircle(),
        ),
        // Bottom right circle
        Positioned(
          left: sin(controller.value * 2 * pi + pi / 2) * 80,
          // Different phase
          top: cos(controller.value * 2 * pi) * 80,
          child: _buildSmallCircle(),
        ),
        // Additional circles
        Positioned(
          left: sin(controller.value * 2 * pi + pi / 4) * 90,
          top: sin(controller.value * 2 * pi + pi / 6) * 90,
          child: _buildBigCircle(),
        ),
        Positioned(
          right: cos(controller.value * 2 * pi + pi / 5) * 70,
          bottom: cos(controller.value * 2 * pi + pi / 6) * 70,
          child: _buildSmallCircle(),
        ),
        Positioned(
          left: cos(controller.value * 2 * pi + pi / 3) * 80,
          bottom: sin(controller.value * 2 * pi + pi / 5) * 80,
          child: _buildBigCircle(),
        ),
      ],
    );
  }

  // Helper function to build a circle
  Widget _buildBigCircle() {
    return Container(
      width: 100,
      height: 100,
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
        borderRadius: BorderRadius.circular(50.r),
      ),
    );
  }

  Widget _buildSmallCircle() {
    return Container(
      width: 60,
      height: 60,
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
        borderRadius: BorderRadius.circular(50.r),
      ),
    );
  }
}
