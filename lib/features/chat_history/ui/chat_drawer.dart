import 'package:chatbot_gemini/core/routing/routes_names.dart';
import 'package:chatbot_gemini/features/chat_screen/cubit/chat_cubit.dart';
import 'package:chatbot_gemini/features/chat_screen/cubit/chat_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_text_styles.dart';

Drawer buildChatScreenDrawer(BuildContext context) {
  return Drawer(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: [
            Color(0xFFFAE4D5),
            Color(0xFFC8F4F6),
            Color(0xFFA5E4EB),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 35.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Icon(
                  Icons.history_outlined,
                  size: 30.r,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  'Chats History',
                  style: AppTextStyles.font24quicksand
                      .copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          BlocBuilder<ChatCubit, ChatState>(
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
                                      icon: Icon(Icons.keyboard_arrow_down_rounded),
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
                                            BlocProvider.of<ChatCubit>(context)
                                                .deleteSpecificChatHistory(chat.id);
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Material(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.white.withOpacity(0.6),
                child: InkWell(
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
        ],
      ),
    ),
  );
}
