import 'package:flutter/material.dart';
import 'package:vintech/globals.dart';
import 'package:vintech/pages/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: scheme),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
