import 'dart:developer';
import 'dart:io';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:hive/hive.dart';

import '../models/chat_hive_model.dart';
import '../models/message_hive_model.dart';

class MessageRepository {
  final Gemini gemini = Gemini.instance;
  late Box<MessageHiveModel> messageBox;
  late Box<ChatHiveModel> chatHiveModelBox;

  Future<void> init() async {
    messageBox = await Hive.openBox<MessageHiveModel>('chatMessages');
    chatHiveModelBox = await Hive.openBox<ChatHiveModel>('chatBox');
  }

  Future<String> sendMessage(String content, {String? imagePath}) async {
    try {
      if (imagePath != null) {
        final File imageFile = File(imagePath);
        final response = await gemini.textAndImage(
          text: content,
          images: [await imageFile.readAsBytes()],
        );

        return response?.content?.parts?.last.text ??
            'Oops! something went wrong!';
      } else {
        // Handle text only
        final response = await gemini.text(content);

        return response?.content?.parts?.last.text ??
            'Oops! something went wrong!';
      }
    } catch (e) {
      log('Error in sendMessage: $e');
      // Check if the error is related to network issues
      if (e is SocketException) {
        return 'No internet connection. Please check your connection.';
      } else if (e is FormatException) {
        return 'Bad response format. Please try again later.';
      } else {
        return 'An unexpected error occurred. Please try again.';
      }
    }
  }
}
