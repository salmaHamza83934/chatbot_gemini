import 'package:hive/hive.dart';

part 'chat_hive_model.g.dart';

@HiveType(typeId: 1)
class ChatHiveModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
   String title;

  @HiveField(2)
   String subTitle;

  @HiveField(3)
  final List<String> messageIds; // Store message IDs for quick access

  @HiveField(4)
  final DateTime timestamp;

  ChatHiveModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.messageIds,
  }): timestamp = DateTime.now();
}