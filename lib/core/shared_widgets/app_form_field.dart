import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_text_styles.dart';

class AppFormField extends StatelessWidget {
  bool haveIcon;
  String hintText;

  AppFormField(this.haveIcon, this.hintText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.cyan.shade500, width: 2),
            borderRadius:
            BorderRadius.all(Radius.circular(15.r)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red.shade900, width: 2),
            borderRadius:
            BorderRadius.all(Radius.circular(15.r)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red.shade900, width: 2),
            borderRadius:
            BorderRadius.all(Radius.circular(15.r)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.cyan.shade800, width: 2),
            borderRadius:
            BorderRadius.all(Radius.circular(15.r)),
          ),
          hintText: hintText,
          hintStyle: AppTextStyles.font15quicksand,
          errorStyle: const TextStyle(
            height: 0,
            color: Colors
                .transparent, // Make the text transparent
          ),
          suffixIcon: haveIcon? Icon(Icons.visibility_off,color: Colors.cyan,):SizedBox(),
        ),
        validator: (text) {
          if (text == null || text.trim().isEmpty) {
            return '';
          }
          return null;
        },
      ),
    );
  }
}
