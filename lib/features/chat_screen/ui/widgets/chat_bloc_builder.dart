import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../cubit/message_cubit.dart';
import '../../cubit/message_state.dart';
import 'message_widget.dart';
import 'no_message_widget.dart';

class ChatBlocBuilder extends StatefulWidget {
  const ChatBlocBuilder({super.key});

  @override
  State<ChatBlocBuilder> createState() => _ChatBlocBuilderState();
}

class _ChatBlocBuilderState extends State<ChatBlocBuilder> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeIn,
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageCubit, MessageState>(
      builder: (context, state) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _scrollToBottom();
        });
        return state.maybeWhen(
            success: (messages) {
              return Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: ListView.builder(
                    controller: _scrollController,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return MessageWidget(
                        messages[index],
                      );
                    },
                    itemCount: messages.length,
                  ),
                ),
              );
            },
            initial: () => const NoMessageWidget(),
            orElse: () => Expanded(
                  child: Center(
                      child: Text(
                    'Oops, Something\n went wrong!',
                    style: AppTextStyles.font24quicksand,
                    textAlign: TextAlign.center,
                  )),
                ));
      },
    );
  }
}
