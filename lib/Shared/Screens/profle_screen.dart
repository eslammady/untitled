import 'package:flutter/material.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                margin: EdgeInsets.only(right: 9.0, top: 65),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xff3EB54B), width: 4),
                  color: Colors.blueGrey,
                ),
                child: Icon(Icons.person, color: Colors.white, size: 65),
              ),
              Text(
                'الملف الشخصي',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff005F74), fontSize: 18),
              ),
              Text(
                '20/4/2000\n',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff3EB54B), fontSize: 18),
              ),
              Category_widget('الملف الشخصي', Icons.account_circle,
                  Color(0xff3EB54B), () {}),
              Category_widget(
                  'دوراتي', Icons.model_training, Color(0xff3EB54B), () {}),
              Category_widget('مشاركة', Icons.share, Color(0xff3EB54B), () {}),
              Category_widget(
                  'تواصل معنا', Icons.chat, Color(0xff3EB54B), () {}),
              Category_widget(
                  'تسجيل الخروج', Icons.logout, Color(0xffFF3D00), () {})
            ],
          )),
    );
  }

  Padding Category_widget(
      String data, IconData icon, Color color, void Function()? onPressed) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 8),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: onPressed,
          child: ListTile(
            title: Text(
              data,
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            trailing: Icon(icon, color: Colors.white, size: 20),
          )),
    );
  }
}
