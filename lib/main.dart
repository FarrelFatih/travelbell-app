import 'package:app_travel/page/homepage/home_page.dart';
import 'package:app_travel/page/loginpage/login_page.dart';
import 'package:app_travel/page/splashpage/splash_page.dart';
import 'package:app_travel/page/startboard/start_board_1.dart';
import 'package:app_travel/page/startboard/start_board_2.dart';
import 'package:app_travel/page/startboard/start_board_3.dart';
import 'package:app_travel/widgets/bottom_navigation.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:app_travel/page/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //To hide status bar and below buttons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      routes: {
        "/": (context) => SplashPage(),
        "startBoard1": (context) => StartBoard1(),
        "startBoard2": (context) => StartBoard2(),
        "startBoard3": (context) => StartBoard3(),
        "loginPage": (context) => LoginPage(),
        "homePage": (context) => HomePage(),
        "navigationBar": (context) => CustomNavigationBar(),
      },
    );
  }
}
