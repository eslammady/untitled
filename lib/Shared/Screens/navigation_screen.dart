import 'package:flutter/material.dart';
import 'package:untitled/Shared/Screens/Translators_screen.dart';
import 'package:untitled/Shared/Screens/home_Screen.dart';
import 'package:untitled/Shared/Widget/navigator_controller.dart';
import 'package:untitled/Shared/Screens/profle_screen.dart';

class Navigation_screen extends StatefulWidget {
  const Navigation_screen({super.key});

  @override
  State<Navigation_screen> createState() => _Navigation_screenState();
}

class _Navigation_screenState extends State<Navigation_screen> {
  String langouge = 'اللغة العربية';
  int curant = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff3EB54B),
        selectedLabelStyle: TextStyle(color: Color(0xff3EB54B)),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'مترجمين',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.model_training),
            label: 'دورات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: 'الاشعارات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'ملفي',
          ),
        ],
        onTap: (i) {
          curant = i;
          setState(() {});
        },
        currentIndex: curant,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff3EB54B),
                fixedSize: Size(MediaQuery.of(context).size.width / 3.1,
                    MediaQuery.of(context).size.height / 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Row(
              children: [
                Image.asset("assets/image/🦆 icon _translate_.png"),
                Text('  $langouge'),
              ],
            ),
            onPressed: () {
              if (langouge == 'اللغة العربية') {
                langouge = 'Englash';
              } else {
                langouge = 'اللغة العربية';
              }
              setState(() {});
            }),
        actions: [
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile_screen(),
                )),
            child: Container(
              width: 40,
              margin: EdgeInsets.only(right: 9.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey,
                  image: DecorationImage(
                      image: AssetImage('assets/image/User Male.png'))),
            ),
          ),
        ],
      ),
      body: Navigator_controller.screens[curant],
    );
  }
}
