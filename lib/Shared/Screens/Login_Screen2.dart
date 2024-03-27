import 'package:flutter/material.dart';
import 'package:untitled/Shared/Screens/home_Screen.dart';
import 'package:untitled/Shared/Screens/navigation_screen.dart';
import 'package:untitled/Shared/Screens/signup_screen.dart';

import '../../Controller/auth_controller.dart';

class LoginScreen2 extends StatefulWidget {
  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  TextEditingController EmailController =TextEditingController();
  TextEditingController PasswordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(left: 16, right: 16),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/8111388 1.png",
                height: heightScreen * 0.34,
                width: widthScreen * 0.74,
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: EmailController,
                decoration: InputDecoration(
                  hintText: 'البريد الالكتروني ',
                  hintStyle: TextStyle(
                    color: Colors.deepOrange,
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_outlined),
                  // labelText: 'enter your mail',
                ),
              ),
              SizedBox(
                height: 19,
              ),
              TextFormField(
                controller: PasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'كلمة المرور',
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              ElevatedButton(
                  onPressed: () {
                    AuthController().usersignup(EmailController, PasswordController, context);


                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3EB54B),
                      shadowColor: Colors.lightBlue,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * .85, 48)),
                  child: Text('تسجيل الدخول')),
              TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen())),
                  child: Text('عمل حساب'))
            ],
          ),
        ),
      ),
    );
  }
}
