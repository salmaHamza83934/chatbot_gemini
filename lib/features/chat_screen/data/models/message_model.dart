class MessageModel {
  String chatId;
  final String? content;
  final String sender;
  final String? imageUrl;
  final bool isLoading;
  final String userEmail; // New field for the user's email

  MessageModel({
    required this.chatId,
    required this.content,
    required this.sender,
    this.imageUrl,
    this.isLoading = false,
    required this.userEmail, // Include email in the constructor
  });
}