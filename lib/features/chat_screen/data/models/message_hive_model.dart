import 'package:hive/hive.dart';

part 'message_hive_model.g.dart';

@HiveType(typeId: 0)
class MessageHiveModel extends HiveObject {

  @HiveField(0)
  final String chatId;

  @HiveField(1)
  final String? content;

  @HiveField(2)
  final String sender;

  @HiveField(3)
  final String? imageUrl;

  @HiveField(4)
  final String userEmail;

  MessageHiveModel({
    required this.chatId,
    required this.content,
    required this.sender,
    required this.userEmail,
    this.imageUrl,
  });

}
