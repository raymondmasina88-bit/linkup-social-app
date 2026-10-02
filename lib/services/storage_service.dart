import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadImage({
    required File file,
    required String folder,
  }) async {
    final id = const Uuid().v4();
    final ref = _storage.ref().child(folder).child('$id.jpg');
    await ref.putFile(file);
    return ref.getDownloadURL();
  }

  Future<String> uploadVideo({
    required File file,
    required String folder,
  }) async {
    final id = const Uuid().v4();
    final ref = _storage.ref().child(folder).child('$id.mp4');
    await ref.putFile(file);
    return ref.getDownloadURL();
  }
}
