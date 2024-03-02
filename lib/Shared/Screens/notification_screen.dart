import 'package:flutter/material.dart';

class Notification_screen extends StatefulWidget {
  const Notification_screen({super.key});

  @override
  State<Notification_screen> createState() => _Notification_screenState();
}

class _Notification_screenState extends State<Notification_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'الاشعارات',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              for (int i = 0; i < 8; i++)
                ListTile(
                  title: Text('data'),
                  subtitle: Text('data'),
                  trailing: IconButton(
                      onPressed: () {}, icon: Icon(Icons.more_horiz)),
                )
            ],
          )),
    );
  }
}
