import 'package:hive/hive.dart';

part 'message_hive_model.g.dart';

@HiveType(typeId: 0)
class MessageHiveModel extends HiveObject {

  @HiveField(0)
  final String chatId;
  @HiveField(1)
  final String chatTitle;
  @HiveField(2)
  final String chatSubtitle;

  @HiveField(3)
  final String? content;

  @HiveField(4)
  final String sender;

  @HiveField(5)
  final String? imageUrl;

  MessageHiveModel({
    required this.chatId,
    required this.chatTitle,
    required this.chatSubtitle,
    required this.content,
    required this.sender,
    this.imageUrl,
  });
}
