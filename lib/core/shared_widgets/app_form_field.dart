import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_text_styles.dart';

class AppFormField extends StatelessWidget {
  bool haveIcon;
  String hintText;
  TextEditingController controller;
  Widget? suffixIcon;
  bool isObscure;
  String? Function(String?)? validator;
  AppFormField(
      {required this.haveIcon,
      required this.hintText,
      required this.controller,
      this.isObscure = false,
      this.suffixIcon,
        required this.validator,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: TextFormField(
        obscureText: isObscure,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan.shade500, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade900, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red.shade900, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.cyan.shade800, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15.r)),
          ),
          hintText: hintText,
          hintStyle: AppTextStyles.font15quicksand,
          errorStyle: AppTextStyles.font12quicksand.copyWith(color: Colors.red.shade900),
          suffixIcon: haveIcon
              ? suffixIcon
              : const SizedBox(),
        ),
        validator: validator,
      ),
    );
  }
}
