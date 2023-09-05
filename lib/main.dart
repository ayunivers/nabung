import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nabung/screens/intro_2.dart';
import 'package:nabung/screens/intro_3.dart';
import 'package:nabung/screens/onboarding.dart';
// ignore: unused_import
import 'package:nabung/screens/splash_screen.dart';
// ignore: unused_import
import "package:nabung/screens/intro.dart";

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color(0xfff6828c)),
      initialRoute: '/intro_3',
      routes: {
        '/splashscreen': (context) => SplashScreens(),
        '/onboarding': (context) => intro(),
        '/intro': (context) => intro1(),
        '/intro_2': (context) => intro2(),
        '/intro_3': (context) => intro3(),
      },
      home: intro(),
    );
  }
}
