import 'package:flutter/material.dart';
import 'package:untitled/Shared/Screens/LoginScreen.dart';
import 'package:untitled/Shared/Screens/Login_Screen2.dart';

// ashraf fahmy

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
    );
  }
}
