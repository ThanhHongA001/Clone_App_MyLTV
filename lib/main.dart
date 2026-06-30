import 'package:flutter/material.dart';
import 'ui/activity/Login.dart';

void main() {
  runApp(const MyLtvApp());
}

class MyLtvApp extends StatelessWidget {
  const MyLtvApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}