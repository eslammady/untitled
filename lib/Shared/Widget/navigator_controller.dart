import 'package:untitled/Shared/Screens/Translators_screen.dart';
import 'package:untitled/Shared/Screens/courses_screen.dart';
import 'package:untitled/Shared/Screens/home_Screen.dart';
import 'package:untitled/Shared/Screens/notification_screen.dart';
import 'package:untitled/Shared/Screens/profle_screen.dart';

class Navigator_controller {
  static int currantscrren = 0;
  static List screens = [
    HomeScreen(),
    Translators_screen(),
    Courses_screen(),
    Notification_screen(),
    Profile_screen()
  ];

  static void move(int i) {
    currantscrren = i;
  }
}
