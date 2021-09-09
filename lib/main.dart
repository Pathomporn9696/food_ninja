import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ninja/router.dart';
import 'package:food_ninja/widget/myLogin_page.dart';
import 'package:food_ninja/widget/signup/signup_page.dart';
import 'package:food_ninja/widget/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String initiaRoute = '/';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: initiaRoute,
        routes: routes,
      ),
    );
  }
}
