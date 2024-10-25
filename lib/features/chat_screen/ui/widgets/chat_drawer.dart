import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../cubit/message_cubit.dart';

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
          // Flexible(
          //         child: Align(
          //           alignment: Alignment.topCenter,
          //           child: Container(
          //             margin: EdgeInsets.symmetric(
          //                 horizontal: 10.w, vertical: 10.h),
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(16.r),
          //             ),
          //             child: Material(
          //               borderRadius: BorderRadius.circular(16.r),
          //               color: Colors.white.withOpacity(0.6),
          //               child: ListView.builder(
          //                 shrinkWrap: true,
          //                 physics: BouncingScrollPhysics(),
          //                 padding: EdgeInsets.zero,
          //                 itemBuilder: (context, index) => ListTile(
          //                   trailing: Icon(
          //                     Icons.arrow_forward_ios_rounded,
          //                   ),
          //                   title: Text(
          //                     BlocProvider.of<MessageCubit>(context)
          //                         .messages[index]
          //                         .chatTitle,
          //                     style: AppTextStyles.font15quicksand
          //                         .copyWith(color: Colors.black),
          //                   ),
          //                   subtitle: Text(
          //                     BlocProvider.of<MessageCubit>(context)
          //                         .messages[index]
          //                         .chatSubtitle,
          //                     style: AppTextStyles.font15quicksand,
          //                     overflow: TextOverflow.ellipsis,
          //                   ),
          //                   onTap: () {
          //                     // Handle tapping a specific chat history
          //                   },
          //                 ),
          //                 itemCount: BlocProvider.of<MessageCubit>(context)
          //                     .chatHistoryIds
          //                     .length, // Number of items
          //               ),
          //             ),
          //           ),
          //         ),
          //       )
          //     :
          Expanded(
                  child: Center(
                      child: Padding(
                  padding: EdgeInsets.all(24.r),
                  child: Text(
                    'You haven\'t send any messages yet, let\'s start chatting!',
                    style: AppTextStyles.font24quicksand,
                    textAlign: TextAlign.center,
                  ),
                ))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Material(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.white.withOpacity(0.6),
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
