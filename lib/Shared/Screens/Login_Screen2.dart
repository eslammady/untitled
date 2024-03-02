import 'package:flutter/material.dart';
import 'package:untitled/Shared/Screens/home_Screen.dart';
import 'package:untitled/Shared/Screens/navigation_screen.dart';
import 'package:untitled/repositry/response.dart';

class LoginScreen2 extends StatelessWidget {


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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Navigation_screen()));
                    // print('hellowold');
                    loginScreen();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3EB54B),
                      shadowColor: Colors.lightBlue,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * .85, 48)),
                  child: Text('تسجيل الدخول')),
            ],
          ),
        ),
      ),
    );
  }
}
