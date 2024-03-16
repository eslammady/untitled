import 'package:flutter/material.dart';
import 'package:untitled/Shared/Screens/home_Screen.dart';
import 'package:untitled/Shared/Screens/navigation_screen.dart';
import 'package:untitled/controller/auth_controller.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
  
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController NameController =TextEditingController();
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
                controller: NameController,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'الاسم',
                  hintStyle: TextStyle(
                    color: Colors.cyan,
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  
                ),
              ),
              
              SizedBox(
                height: 19,
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


                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff3EB54B),
                      shadowColor: Colors.lightBlue,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * .85, 48)),
                  child: Text('عمل حساب')),
            ],
          ),
        ),
      ),
    );
  }
}