import 'package:chatbot_gemini/core/asset_images/app_images.dart';
import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/shared_widgets/custom_alert_dialog.dart';
import '../../cubit/chat_cubit.dart';

class BotDetailsLine extends StatelessWidget {
  const BotDetailsLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      margin: EdgeInsets.only(top: 30.h, bottom: 5.h, left: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Drawer Icon
          IconButton(
            icon: Icon(Icons.menu, size: 30.r), // Drawer Icon
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open Drawer
            },
          ),
          SizedBox(
            width: 10.w,
          ),
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blueAccent,
                backgroundImage: AssetImage(AppImages.avatarRobotImage),
              ),
              SizedBox(width: 15.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CleverCat Bot',
                    style: AppTextStyles.font20quicksand,
                  ),
                  Text('Online', style: AppTextStyles.font12quicksand),
                ],
              ),
            ],
          ),
          Spacer(),
          // Popup menu
          PopupMenuButton<String>(
            iconSize: 30.r,
            color: Colors.white,
            enableFeedback: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.r),
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                height: 40.h,
                onTap: () {
                   showCustomAlertDialog(
                            context: context,
                            title: 'Clear Chat Messages?',
                            description:
                                'Are you sure you want to delete all messages from this chat? The chat session will remain, but all current messages will be permanently erased. This action cannot be undone.',
                            primaryActionText: 'Yes, Delete',
                            secondaryActionText: 'Cancel',
                            primaryActionButtonColor: Colors.red.shade800,
                            primaryActionFun: () {
                              BlocProvider.of<ChatCubit>(context)
                                  .deleteChatFromDB(
                                      BlocProvider.of<ChatCubit>(context)
                                          .currentChatId);
                              Navigator.pop(context);
                            },
                            secondaryActionFun: () {
                              Navigator.pop(context);
                            },
                   );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.delete_forever,
                      color: Colors.red.shade800,
                      size: 30.r,
                    ),
                    Text(
                      'Clear Chat',
                      style: AppTextStyles.font15quicksand
                          .copyWith(color: Colors.red.shade800),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
