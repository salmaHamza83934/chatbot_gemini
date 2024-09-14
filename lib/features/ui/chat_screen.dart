import 'package:chatbot_gemini/features/ui/widgets/bot_details_line.dart';
import 'package:chatbot_gemini/features/ui/widgets/message_form_field.dart';
import 'package:chatbot_gemini/features/ui/widgets/no_message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var messageController = TextEditingController();
  bool isMessageEmpty = true;

  @override
  void initState() {
    super.initState();
    messageController.addListener(() {
      setState(() {
        isMessageEmpty = messageController.text.isEmpty;
      });
    });
  }

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1.00, 0.00),
            end: Alignment(1, -1),
            colors: [
              Color(0xFFA5E4EB),
              Color(0xFFC8F4F6),
              Color(0xFFFAE4D5),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const BotDetailsLine(),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.r),
                    topLeft: Radius.circular(40.r),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NoMessageWidget(isMessageEmpty),
                    MessageFormField(messageController),
                    SizedBox(
                      height: 30.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
