class MessageModel {
  final String? content;
  final String sender;
  final String? imageUrl;
  final String chatTitle;
  String chatSubtitle;
  final bool isLoading;
  bool isAnimated;

  MessageModel({
    required this.content,
    required this.sender,
    this.imageUrl,
    required this.chatTitle,
    required this.chatSubtitle,
    this.isLoading = false,
    this.isAnimated=true
  });
}
