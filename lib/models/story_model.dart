import 'package:cloud_firestore/cloud_firestore.dart';

class StoryModel {
  final String storyId;
  final String userId;
  final String mediaUrl;
  final Timestamp expiresAt;

  const StoryModel({
    required this.storyId,
    required this.userId,
    required this.mediaUrl,
    required this.expiresAt,
  });

  factory StoryModel.fromMap(Map<String, dynamic> map) {
    return StoryModel(
      storyId: map['storyId'] ?? '',
      userId: map['userId'] ?? '',
      mediaUrl: map['mediaUrl'] ?? '',
      expiresAt: map['expiresAt'] is Timestamp ? map['expiresAt'] : Timestamp.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'storyId': storyId,
      'userId': userId,
      'mediaUrl': mediaUrl,
      'expiresAt': expiresAt,
    };
  }
}
