import 'package:flutter/material.dart';
import 'package:untitled/Shared/Widget/search_widget.dart';

class Courses_screen extends StatefulWidget {
  const Courses_screen({super.key});

  @override
  State<Courses_screen> createState() => _Courses_screenState();
}

class _Courses_screenState extends State<Courses_screen> {
  TextEditingController coursescontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection:TextDirection.rtl ,
        child: Column(children: [
          Search_widget(coursescontroller, onChanged: (i) {}),
          ListTile(
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
            trailing: Text(
              'دورات   ',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Expanded(
              child: GridView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      gradient: index % 2 == 0
                          ? LinearGradient(
                              colors: [Color(0xff3EB54B), Color(0xff005F74)])
                          : LinearGradient(
                              colors: [Color(0xff005F74), Color(0xff3EB54B)]),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          index % 2 == 0
                              ? 'assets/image/img1.png'
                              : 'assets/image/img2.png',
                          height: MediaQuery.of(context).size.height / 10,
                          width: MediaQuery.of(context).size.width / 1.5,
                          fit: BoxFit.fill),
                      Text(
                        index % 2 == 0
                            ? 'تعلم لغة الاشارو   '
                            : 'كورس برمجة الويب بلغة الاشارة',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      Text(
                        textAlign: TextAlign.end,
                        index % 2 == 0
                            ? 'تكورس تعلم لغة الاشارة وكل المهارات التي تساعدك على التواصل مع الاخرين'
                            : 'كورس تعلم تصميم وبرمجة الويب بلغة الاشارة يجعلك قادر على التوغل فى سوق العمل',
                        style:
                            TextStyle(color: Colors.grey.shade100, fontSize: 10),
                      ),
                      Row(
                        children: [
                          Text(
                            '    4.8  ',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            '  1 k View',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 8.0, crossAxisSpacing: 8.0),
          ))
        ]),
      ),
    );
  }
}
