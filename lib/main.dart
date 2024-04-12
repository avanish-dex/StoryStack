import 'package:flutter/material.dart';
import 'package:storystack/Config/themes.dart';
import 'package:storystack/pages/welcome_page.dart';
import 'package:get/get.dart';

void main() {
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
      home: const WelcomePage(),
    );
  }
}
