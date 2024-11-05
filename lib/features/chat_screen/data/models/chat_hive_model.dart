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

  @HiveField(5)
  final String userEmail; // New field for user’s email

  ChatHiveModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.messageIds,
    required this.userEmail, // Require the email in the constructor
  }) : timestamp = DateTime.now();
}