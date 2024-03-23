import 'package:flutter/material.dart';
import 'Shared/Screens/SplashScreen.dart';

// ashraf fahmy

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
