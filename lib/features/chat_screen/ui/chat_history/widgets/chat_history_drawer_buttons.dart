import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/cache_helper/shared_preference.dart';
import '../../../../../core/routing/routes_names.dart';
import '../../../../../core/shared_widgets/custom_alert_dialog.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../cubit/chat_cubit.dart';
class ChatHistoryDrawerButtons extends StatelessWidget {
  const ChatHistoryDrawerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: Material(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.white.withOpacity(0.6),
              child: InkWell(
                borderRadius: BorderRadius.circular(16.r),
                onTap: () {
                  BlocProvider.of<ChatCubit>(context).addNewChat();
                  Navigator.pop(context);
                },
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_rounded,
                        size: 30.r,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text('New chat', style: AppTextStyles.font20quicksand),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Material(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.white.withOpacity(0.6),
              child: InkWell(
                borderRadius: BorderRadius.circular(16.r),
                onTap: () async {
                  showCustomAlertDialog(
                    context: context,
                    title: 'Oops! Sign Out?',
                    description:
                    'Are you sure you want to sign out? We’ll miss you! Don’t worry, you can come back anytime to pick up where you left off.',
                    primaryActionText: 'Yes, Sign Out',
                    secondaryActionText: 'Stay',
                    primaryActionButtonColor: Colors.cyan,
                    primaryActionFun: () async {
                      await SharedPrefHelper.clearAllSecuredData().then((v) {
                        Navigator.pop(context);
                        Navigator.pushReplacementNamed(
                          context, Routes.onboardingScreen,);
                      });
                    },
                    secondaryActionFun: () {
                      Navigator.pop(context);
                    },
                  );
                },
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_rounded,
                        size: 30.r,
                        color: Colors.red.shade800,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'Log out',
                        style: AppTextStyles.font20quicksand
                            .copyWith(color: Colors.red.shade800),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
