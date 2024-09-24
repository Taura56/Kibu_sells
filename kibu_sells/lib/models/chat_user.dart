class ChatUser {
  final String uid;
  final String name;
  final String email;
  final String imageUrl;
  late DateTime lastActive;

  ChatUser(
      {required this.uid,
      required this.name,
      required this.email,
      required this.imageUrl,
      required this.lastActive});

  factory ChatUser.fromJSON(Map<String, dynamic> _json) {
    return ChatUser(
      uid: _json["uid"],
      name: _json["name"],
      email: _json["email"],
      imageUrl: _json["imageUrl"],
      lastActive: _json["lastActive"].toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "email": email,
      "name": name,
      "lastActive": lastActive,
      "imageUrl": imageUrl
    };
  }

  String lastDayActive() {
    return "${lastActive.month}/${lastActive.day}/${lastActive.hour}/${lastActive.minute}/";
  }

  bool wasRecentActive() {
    return DateTime.now().difference(lastActive).inHours < 2;
  }
}
