import 'package:untitled/Shared/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
        return loginScreen();
      }
      ), (route) => false);
    }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/image/8111388 1.png" ,height: 311,width: 311,),
      ),
    );
  }
}
