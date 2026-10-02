import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String name;
  final String username;
  final String email;
  final String? phone;
  final String profilePhoto;
  final String coverPhoto;
  final String bio;
  final String location;
  final int followersCount;
  final int followingCount;
  final int friendsCount;
  final int postsCount;
  final bool online;
  final Timestamp? lastSeen;

  const UserModel({
    required this.uid,
    required this.name,
    required this.username,
    required this.email,
    this.phone,
    this.profilePhoto = '',
    this.coverPhoto = '',
    this.bio = '',
    this.location = '',
    this.followersCount = 0,
    this.followingCount = 0,
    this.friendsCount = 0,
    this.postsCount = 0,
    this.online = true,
    this.lastSeen,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'],
      profilePhoto: map['profilePhoto'] ?? '',
      coverPhoto: map['coverPhoto'] ?? '',
      bio: map['bio'] ?? '',
      location: map['location'] ?? '',
      followersCount: map['followersCount'] ?? 0,
      followingCount: map['followingCount'] ?? 0,
      friendsCount: map['friendsCount'] ?? 0,
      postsCount: map['postsCount'] ?? 0,
      online: map['online'] ?? true,
      lastSeen: map['lastSeen'] is Timestamp ? map['lastSeen'] : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'profilePhoto': profilePhoto,
      'coverPhoto': coverPhoto,
      'bio': bio,
      'location': location,
      'followersCount': followersCount,
      'followingCount': followingCount,
      'friendsCount': friendsCount,
      'postsCount': postsCount,
      'online': online,
      'lastSeen': lastSeen,
    };
  }
}
