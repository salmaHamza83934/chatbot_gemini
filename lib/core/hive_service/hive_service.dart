import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../features/chat_screen/data/models/chat_hive_model.dart';
import '../../features/chat_screen/data/models/message_hive_model.dart';


class HiveService {
  late Box<MessageHiveModel> messageBox;
  late Box<ChatHiveModel> chatHiveModelBox;

  Future<void> init() async {
    await Hive.initFlutter(); // Initialize Hive
    messageBox = await Hive.openBox<MessageHiveModel>('chatMessages');
    chatHiveModelBox = await Hive.openBox<ChatHiveModel>('chatBox');
  }
}