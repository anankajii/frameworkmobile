class ChatModel {
  final String name;
  final String message;
  final String time;
  final String profile;

  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.profile,
  });
}

List<ChatModel> chats = [
  ChatModel(
    name: "Budi",
    message: "Halo bro!",
    time: "10:00",
    profile: "assets/img/profile1.jpg",
  ),
  ChatModel(
    name: "Andi",
    message: "Sudah makan?",
    time: "11:30",
    profile: "assets/img/profile2.jpg",
  ),
];