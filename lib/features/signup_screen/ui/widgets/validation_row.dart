import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';

Widget buildValidationRow(String text, bool hasValidated) {
  return Row(
    children: [
      CircleAvatar(
        radius: 2.5,
        backgroundColor: hasValidated ? Colors.grey : Colors.cyan,
      ),
      SizedBox(width: 6.w),
      Text(
        text,
        style: AppTextStyles.font12quicksand.copyWith(
          decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationColor: Colors.grey,
          decorationThickness: 2,
          color: hasValidated ? Colors.grey : Colors.cyan,
        ),
      )
    ],
  );
}
