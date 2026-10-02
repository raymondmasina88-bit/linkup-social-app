import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:link_up/firebase_options.dart';
import 'package:link_up/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const LinkUpApp());
}
