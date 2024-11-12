import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes_names.dart';
import '../../../../../core/shared_widgets/custom_alert_dialog.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../cubit/chat_cubit.dart';
import '../../../cubit/chat_state.dart';

class ChatHistoryBlocBuilder extends StatelessWidget {
  const ChatHistoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        // Access the list of chats from the ChatCubit
        final chatHiveModel =
            BlocProvider.of<ChatCubit>(context).chatHistory;

        return chatHiveModel.isNotEmpty
            ? Flexible(
            child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 10.w, vertical: 10.h),
                  child: Material(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Colors.white.withOpacity(0.6),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: chatHiveModel.length,
                      itemBuilder: (context, index) {
                        final chat = chatHiveModel[index];
                        return ListTile(
                          title: Text(
                            chat.title,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text(
                            chat.subTitle,
                            overflow: TextOverflow.ellipsis,
                          ),
                          // Handle possible null subtitle
                          trailing: PopupMenuButton<String>(
                            iconSize: 30.r,
                            icon: Icon(
                                Icons.keyboard_arrow_down_rounded),
                            color: Colors.white,
                            enableFeedback: false,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(15.r),
                            ),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                height: 40.h,
                                onTap: () {
                                  showCustomAlertDialog(
                                    context: context,
                                    title: 'Delete Chat?',
                                    description:
                                    'Are you sure you want to delete this chat? This will remove all messages within this conversation permanently. This action cannot be undone.',
                                    primaryActionText: 'Yes, Delete',
                                    secondaryActionText: 'Cancel',
                                    primaryActionButtonColor:
                                    Colors.red.shade800,
                                    primaryActionFun: () {
                                      BlocProvider.of<ChatCubit>(
                                          context)
                                          .deleteSpecificChatHistory(
                                          chat.id);
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
                                      'Delete Chat',
                                      style: AppTextStyles
                                          .font15quicksand
                                          .copyWith(
                                          color: Colors
                                              .red.shade800),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),

                          onTap: () {
                            BlocProvider.of<ChatCubit>(context)
                                .selectChat(chat.id);
                            Navigator.pushNamed(
                                context, Routes.chatScreen,
                                arguments: {'chatId': chat.id});
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        );
                      },
                    ),
                  ),
                )))
            : Expanded(
            child: Center(
                child: Padding(
                  padding: EdgeInsets.all(24.r),
                  child: Text(
                    'You haven\'t sent any messages yet, let\'s start chatting!',
                    style: AppTextStyles.font24quicksand,
                    textAlign: TextAlign.center,
                  ),
                )));
      },
    );
  }
}
