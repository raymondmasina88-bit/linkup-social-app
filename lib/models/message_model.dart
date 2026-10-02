import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String messageId;
  final String senderId;
  final String receiverId;
  final String text;
  final String image;
  final Timestamp timestamp;
  final bool seen;

  const MessageModel({
    required this.messageId,
    required this.senderId,
    required this.receiverId,
    this.text = '',
    this.image = '',
    required this.timestamp,
    this.seen = false,
  });

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      messageId: map['messageId'] ?? '',
      senderId: map['senderId'] ?? '',
      receiverId: map['receiverId'] ?? '',
      text: map['text'] ?? '',
      image: map['image'] ?? '',
      timestamp: map['timestamp'] is Timestamp ? map['timestamp'] : Timestamp.now(),
      seen: map['seen'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'messageId': messageId,
      'senderId': senderId,
      'receiverId': receiverId,
      'text': text,
      'image': image,
      'timestamp': timestamp,
      'seen': seen,
    };
  }
}
