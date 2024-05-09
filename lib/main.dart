import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:storystack/Config/themes.dart';
import 'package:storystack/firebase_options.dart';
import 'package:storystack/pages/SplacePage/splacepage.dart';
// ignore: unused_import
import 'package:storystack/pages/welcome_page.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StoryStack',
      theme: lightTheme,
      home: const SplacePage(),
    );
  }
}
