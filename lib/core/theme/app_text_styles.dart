import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle font20quicksand = GoogleFonts.quicksand(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static TextStyle font12quicksand = GoogleFonts.quicksand(
      fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 12.sp);
  static TextStyle font24quicksand = GoogleFonts.quicksand(
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade600,
    fontSize: 24.sp,
  );
  static TextStyle font15quicksand = GoogleFonts.quicksand(
    fontWeight: FontWeight.w500,
    color: Colors.grey.shade600,
    fontSize: 15.sp,
  );
  static TextStyle font18quicksand = GoogleFonts.quicksand(
    fontWeight: FontWeight.w400,
    color: Colors.white,
    fontSize: 18.sp,
  );
  static TextStyle font18montserrat = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontSize: 18.sp,
  );
  static TextStyle font30montserrat = GoogleFonts.montserrat(
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
      shadows: [
        Shadow(
          offset: const Offset(0.3, 0.3),
          blurRadius: 2.0,
          color: Colors.black.withOpacity(0.4),
        ),
      ]);
}
