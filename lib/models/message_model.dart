class Message {
  final int id;
  final String title;
  final String message;

  Message({required this.id, required this.title, required this.message});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      title: json['title'],
      message: json['message'],
    );
  }
}
