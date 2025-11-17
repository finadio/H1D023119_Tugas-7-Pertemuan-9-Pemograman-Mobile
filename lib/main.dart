// main.dart
import 'package:flutter/material.dart';
import 'package:prakpert9/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Menu',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginPage(),
    ); // MaterialApp
  }
}
