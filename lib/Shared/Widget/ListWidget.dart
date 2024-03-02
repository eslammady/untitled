import 'package:flutter/material.dart';
import 'package:untitled/Shared/Widget/search_widget.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xff005f74)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "مطار",
                  style: TextStyle(color: Color(0xff005f74), fontSize: 24),
                )
              ],
            ),
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Search_widget(controller),
            // ListTile(
            //   title: Text("مطار"),
            //   titleTextStyle:TextStyle(
            //     fontSize: 18,
            //     fontWeight: FontWeight.w400,
            //     color: Color(0xff005F74)
            //   ),
            // ),
            // Search_widget(controller),
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset("assets/image/giphy 9.png"),
                      Expanded(
                        child: Container(
                            height: 49,
                            width: 308,
                            decoration: BoxDecoration(color: Color(0xff3EB54B)),
                            // width: double.infinity,
                            child: Text("")),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xff005F74),
                              fixedSize: Size(48, 49)
                              // fixedSize: Size(5, 5)
                              ),
                          onPressed: () {},
                          child: Icon(
                            Icons.volume_up_rounded,
                            color: Color(0xffffffff),
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xffD9D9D9),
                              fixedSize: Size(48, 49)),
                          onPressed: () {},
                          child: Icon(
                            Icons.play_arrow,
                            color: Color(0xff3EB54B),
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
