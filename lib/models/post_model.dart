import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  final String postId;
  final String userId;
  final String text;
  final List<String> media;
  final String privacy;
  final Timestamp createdAt;
  final Map<String, int> reactionCounts;
  final int commentsCount;
  final int sharesCount;

  const PostModel({
    required this.postId,
    required this.userId,
    required this.text,
    this.media = const [],
    this.privacy = 'public',
    required this.createdAt,
    this.reactionCounts = const {},
    this.commentsCount = 0,
    this.sharesCount = 0,
  });

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      postId: map['postId'] ?? '',
      userId: map['userId'] ?? '',
      text: map['text'] ?? '',
      media: List<String>.from(map['media'] ?? const []),
      privacy: map['privacy'] ?? 'public',
      createdAt: map['createdAt'] is Timestamp ? map['createdAt'] : Timestamp.now(),
      reactionCounts: Map<String, int>.from(map['reactionCounts'] ?? const {}),
      commentsCount: map['commentsCount'] ?? 0,
      sharesCount: map['sharesCount'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'postId': postId,
      'userId': userId,
      'text': text,
      'media': media,
      'privacy': privacy,
      'createdAt': createdAt,
      'reactionCounts': reactionCounts,
      'commentsCount': commentsCount,
      'sharesCount': sharesCount,
    };
  }
}
