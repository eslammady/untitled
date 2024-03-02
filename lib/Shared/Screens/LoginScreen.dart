import 'package:flutter/material.dart';
import 'package:untitled/Shared/Screens/Login_Screen2.dart';
class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset("assets/image/8111388 1.png",height: 311,width:311,),
              SizedBox(
                height: 70,
              ),

              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff005f74),
                      shadowColor: Colors.lightBlue,
                      fixedSize:
                      Size(MediaQuery.of(context).size.width * .85, 48)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60 , right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('تسجيل بواسطة حساب فيسبوك',style: TextStyle(color: Colors.white),),
                        Icon(Icons.facebook,color: Colors.white,),
                      ],
                    ),
                  )),
              SizedBox(
                height: 19,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff005f74),
                      shadowColor: Colors.lightBlue,
                      fixedSize:
                      Size(MediaQuery.of(context).size.width * .85, 48)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60 , right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('تسجيل باستخدام حساب جوجل',style: TextStyle(color: Colors.white),),
                        Image.asset('assets/image/google.png',height: 25,width: 25,),
                      ],
                    ),
                  )),
              SizedBox(
                height: 19,
              ),
              ElevatedButton(
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context){
                     return LoginScreen2();
                   }));
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
