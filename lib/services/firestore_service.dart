import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:link_up/models/post_model.dart';
import 'package:link_up/models/user_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get usersRef =>
      _firestore.collection('users');

  CollectionReference<Map<String, dynamic>> get postsRef =>
      _firestore.collection('posts');

  CollectionReference<Map<String, dynamic>> get storiesRef =>
      _firestore.collection('stories');

  CollectionReference<Map<String, dynamic>> get messagesRef =>
      _firestore.collection('messages');

  Future<void> createUser(UserModel user) async {
    await usersRef.doc(user.uid).set(user.toMap());
  }

  Future<UserModel?> getUser(String uid) async {
    final snapshot = await usersRef.doc(uid).get();
    if (!snapshot.exists || snapshot.data() == null) {
      return null;
    }
    return UserModel.fromMap(snapshot.data()!);
  }

  Future<void> createPost(PostModel post) async {
    await postsRef.doc(post.postId).set(post.toMap());
  }

  Stream<List<PostModel>> getPosts() {
    return postsRef
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => PostModel.fromMap(doc.data()))
              .toList(),
        );
  }

  Future<void> updateUserField(String uid, String field, dynamic value) async {
    await usersRef.doc(uid).update({field: value});
  }

  Future<void> deleteUser(String uid) async {
    await usersRef.doc(uid).delete();
  }
}
