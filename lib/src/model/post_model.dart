import 'dart:convert';

List<Post> postFromJson(String jsonString) {
  final data = json.decode(jsonString);
  return List<Post>.from(data.map((item) => Post.fromJson(item)));
}

class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post({required this.id, required this.userId, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}