import 'package:flutter/material.dart';
import 'package:untitled/Controller/auth_controller.dart';

class Signup_screen extends StatefulWidget {
  const Signup_screen({super.key});

  @override
  State<Signup_screen> createState() => _Signup_screenState();
}

class _Signup_screenState extends State<Signup_screen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
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
          child: ListView(
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
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: 'الاسم ',
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  prefixIcon: Icon(Icons.person),
                  // labelText: 'enter your mail',
                ),
              ),
              SizedBox(
                height: 19,
              ),
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  hintText: 'البريد الالكتروني ',
                  hintStyle: TextStyle(
                    color: Colors.deepOrange,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  prefixIcon: Icon(Icons.email_outlined),
                  // labelText: 'enter your mail',
                ),
              ),
              SizedBox(
                height: 19,
              ),
              TextFormField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'كلمة المرور',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: 130,
              ),
              ElevatedButton(
                  onPressed: () {
                    Map data = {
                      "email": emailcontroller.text,
                      "password": passwordcontroller.text,
                      "name": namecontroller.text
                    };
                    if (namecontroller.text.isNotEmpty &&
                        emailcontroller.text.isNotEmpty &&
                        passwordcontroller.text.isNotEmpty)
                      AuthController().signup(data);
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
