import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_text_styles.dart';

void showCustomAlertDialog({
  required BuildContext context,
  required String title,
  required String description,
  required String primaryActionText,
  required String secondaryActionText,
  required Color primaryActionButtonColor,
  required VoidCallback primaryActionFun,
  required VoidCallback secondaryActionFun,
}) {
  showDialog(context: context, builder:(context) {
    return AlertDialog(
      title: Center(
        child: Text(
          title,
          style: AppTextStyles.font20quicksand,
        ),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text(
              description,
              style: AppTextStyles.font15quicksand,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(16.r),
                color: primaryActionButtonColor,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16.r),
                  onTap: primaryActionFun,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Center(
                      child: Text(
                        primaryActionText,
                        style: AppTextStyles.font15quicksand
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w), // Add space between the buttons
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.grey.shade400,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16.r),
                  onTap: secondaryActionFun,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Center(
                      child: Text(
                        secondaryActionText,
                        style: AppTextStyles.font15quicksand
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  },);
}
