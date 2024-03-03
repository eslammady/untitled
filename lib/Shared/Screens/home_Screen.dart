import 'package:flutter/material.dart';
import 'package:untitled/Shared/Screens/List_estate.dart';
import 'package:untitled/Shared/Screens/List_hotel.dart';
import 'package:untitled/Shared/Screens/List_tax.dart';
import 'package:untitled/Shared/Screens/list_bank.dart';
import 'package:untitled/Shared/Screens/list_rest2.dart';
import 'package:untitled/Shared/Screens/list_train.dart';
import 'package:untitled/Shared/Widget/search_widget.dart';
import 'package:untitled/Shared/Widget/ListWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController homepagecontroller = TextEditingController();
  PageController controller = PageController(viewportFraction: 0.75);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Search_widget(homepagecontroller),
            ListTile(title: Text('الرئسية')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                homepage_widget('bank.png', 'بنك', () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ListBank();
                  }));
                },
                    Size(MediaQuery.of(context).size.width / 2.2,
                        MediaQuery.of(context).size.height / 5.5),
                    Color(0xff3EB54B)),
                homepage_widget('restaurant22.png', 'مطعم', () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ListRest2();
                  }));
                },
                    Size(MediaQuery.of(context).size.width / 2.2,
                        MediaQuery.of(context).size.height / 5.5),
                    Color(0xff005f74))
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: homepage_widget('airplane.png', 'مطار', () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ListWidget();
                  }));
                },
                    Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height / 5.5),
                    Color(0xff005f74))),
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
              child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: PageView(
                    controller: controller,
                    padEnds: false,
                    children: [
                      homepage_widget('hotel (1).png', 'فندق', () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ListHotel();
                        }));
                      },
                          Size(MediaQuery.of(context).size.width,
                              MediaQuery.of(context).size.height / 5.5),
                          Color(0xff3EB54B)),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: homepage_widget('train.png', 'محطة القطار', () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return ListTrain();
                          }));
                        },
                            Size(MediaQuery.of(context).size.width,
                                MediaQuery.of(context).size.height / 5.5),
                            Color(0xff005f74)),
                      ),
                      homepage_widget('Vector.png', 'تاكسي', () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ListTax();
                        }));
                      },
                          Size(MediaQuery.of(context).size.width,
                              MediaQuery.of(context).size.height / 5.5),
                          Color(0xff3EB54B))
                    ],
                  )),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: homepage_widget('house.png', 'شهر عقاري', () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ListEstate();
                  }));
                },
                    Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height / 5.5),
                    Color(0xff3EB54B))),
          ],
        ),
      ),
    );
  }

  ElevatedButton homepage_widget(String image, String data,
      void Function()? onPressed, Size? fixedSize, Color Color) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Color,
            fixedSize: fixedSize,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0))),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            if (image != '')
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: fixedSize!.height / 1.8,
                  width: fixedSize.height / 1.8,
                  margin: EdgeInsets.only(right: 9.0, top: 8),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/$image'),
                          fit: BoxFit.contain)),
                ),
              ),
            Text(
              data,
              style: TextStyle(
                fontSize: 25,
              ),
            )
          ],
        ),
        onPressed: onPressed);
  }
}
