import 'package:flutter/material.dart';
import 'package:tinder_login_page/pages/login_page_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        color: Color(0xffea5770),
        child: LoginPage(),
      ),
    );
  }
}
