import 'package:flutter/material.dart';
import 'Shared/Screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';

// ashraf fahmy

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
