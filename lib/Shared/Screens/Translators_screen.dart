import 'package:flutter/material.dart';
import 'package:untitled/Shared/Widget/search_widget.dart';

class Translators_screen extends StatefulWidget {
  const Translators_screen({super.key});

  @override
  State<Translators_screen> createState() => _Translators_screenState();
}

class _Translators_screenState extends State<Translators_screen> {
  TextEditingController translatorscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Search_widget(translatorscontroller),
              ListTile(
                leading: IconButton(onPressed: () {}, icon: Icon(Icons.sort)),
                trailing: Text(
                  'مترجمين   ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              for (int i = 0; i < 8; i++)
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Card(
                      color: Color(0xffD9D9D9),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20))),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              'د/حسام الدين',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Color(0xff3EB54B),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'خبير فى لغة الاشارة وحاصل على بعض الجوائز',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Color(0xff005F74), fontSize: 10),
                            ),
                            trailing: Container(
                              width: 40,
                              margin: EdgeInsets.only(right: 9.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blueGrey,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/User Male.png'))),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            color: Color(0xff005F74),
                            child: Row(
                              children: [
                                for (int i = 0; i < 5; i++)
                                  Icon(
                                    i < 4 ? Icons.star : Icons.star_border,
                                    color: Colors.amber,
                                  ),
                                Spacer(),
                                Text(
                                  'تقيم           ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                )
            ],
          ),
        ));
  }
}
