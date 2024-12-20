import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

class SignupCirclesAnimation extends StatelessWidget {
  final AnimationController _controller;
  const SignupCirclesAnimation(this._controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        // Top left circle
        Positioned(
          right: sin(_controller.value * 2 * pi) * 50,
          top: sin(_controller.value * 2 * pi) * 50,
          child: _buildBigCircle(),
        ),
        // Top right circle
        Positioned(
          right: sin(_controller.value * 2 * pi + pi / 2) * 100,
          top: cos(_controller.value * 2 * pi) * 100,
          child: _buildSmallCircle(),
        ),
        // Additional circles
        Positioned(
          right: cos(_controller.value * 2 * pi + pi / 3) * 70,
          top: sin(_controller.value * 2 * pi + pi / 4) * 80,
          child: _buildBigCircle(),
        ),
        Positioned(
          right: sin(_controller.value * 2 * pi + pi / 6) * 60,
          top: cos(_controller.value * 2 * pi + pi / 2) * 90,
          child: _buildSmallCircle(),
        ),
        Positioned(
          left: sin(_controller.value * 2 * pi + pi / 4) * 80,
          bottom: cos(_controller.value * 2 * pi) * 70,
          child: _buildBigCircle(),
        ),
        Positioned(
          left: cos(_controller.value * 2 * pi + pi / 3) * 50,
          bottom: sin(_controller.value * 2 * pi + pi / 4) * 60,
          child: _buildSmallCircle(),
        ),
        Positioned(
          left: sin(_controller.value * 2 * pi + pi / 2) * 90,
          bottom: cos(_controller.value * 2 * pi + pi / 3) * 80,
          child: _buildBigCircle(),
        ),
        Positioned(
          right: cos(_controller.value * 2 * pi + pi / 4) * 90,
          bottom: sin(_controller.value * 2 * pi + pi / 2) * 70,
          child: _buildSmallCircle(),
        ),
        // Bottom left circle
        Positioned(
          left: cos(_controller.value * 2 * pi) * 60,
          bottom: sin(_controller.value * 2 * pi) * 60,
          child: _buildSmallCircle(),
        ),
        // Bottom right circle
        Positioned(
          left: cos(_controller.value * 2 * pi + pi / 2) * 60,
          bottom: cos(_controller.value * 2 * pi) * 60,
          child: _buildBigCircle(),
        ),
        Positioned(
          left: cos(_controller.value * 2 * pi + pi / 2) * 100,
          bottom: sin(_controller.value * 2 * pi) * 100,
          child: _buildSmallCircle(),
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
