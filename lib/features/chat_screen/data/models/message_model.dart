class MessageModel {
  String chatId;
  final String? content;
  final String sender;
  final String? imageUrl;
  final bool isLoading;
  bool isAnimated;

  MessageModel({
    required this.chatId,
    required this.content,
    required this.sender,
    this.imageUrl,
    this.isLoading = false,
    this.isAnimated=true
  });
}
