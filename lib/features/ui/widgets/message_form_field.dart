import 'package:chatbot_gemini/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageFormField extends StatefulWidget {
  TextEditingController messageController;

  MessageFormField(this.messageController);

  @override
  State<MessageFormField> createState() => _MessageFormFieldState();
}

class _MessageFormFieldState extends State<MessageFormField> {
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 280.w,
                child: TextFormField(
                  controller: widget.messageController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.cyan.shade500, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.red.shade900, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15.r)),

                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.red.shade900, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15.r)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.cyan.shade800, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15.r)),

                    ),
                    hintText: 'Type a message',hintStyle: AppTextStyles.font15quicksand,
                    errorStyle: const TextStyle(
                      height: 0,
                      color: Colors
                          .transparent, // Make the text transparent
                    ),
                  ),
                  validator: (text) {
                    if (text == null || text.trim().isEmpty) {
                      return '';
                    }
                    return null;
                  },
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  if (formKey.currentState!.validate()) {
                  }
                },
                child: Container(
                  height: 60.h,
                  width: 60.w,
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color(0xFFFAE4D5),
                          Color(0xFFA5E4EB),
                          Color(0xFF5BDAE3),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
