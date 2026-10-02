import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationModel {
  final String notificationId;
  final String userId;
  final String type;
  final String senderId;
  final Timestamp createdAt;
  final bool read;

  const NotificationModel({
    required this.notificationId,
    required this.userId,
    required this.type,
    required this.senderId,
    required this.createdAt,
    this.read = false,
  });

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      notificationId: map['notificationId'] ?? '',
      userId: map['userId'] ?? '',
      type: map['type'] ?? '',
      senderId: map['senderId'] ?? '',
      createdAt: map['createdAt'] is Timestamp ? map['createdAt'] : Timestamp.now(),
      read: map['read'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'notificationId': notificationId,
      'userId': userId,
      'type': type,
      'senderId': senderId,
      'createdAt': createdAt,
      'read': read,
    };
  }
}
