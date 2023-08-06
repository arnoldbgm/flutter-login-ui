import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/login1_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      debugShowCheckedModeBanner: false,
      home: Login1Page(),
    );
  }
}
