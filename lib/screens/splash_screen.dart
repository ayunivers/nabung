import 'package:flutter/material.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xfff6828c),
          body: Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 300,
                        width: 300,
                        child: Image(
                          image: AssetImage("assets/images/logo.png"),
                          alignment: Alignment.bottomCenter,
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ))),
        ));
  }
}
