import 'package:flutter/material.dart';

class intro extends StatefulWidget {
  const intro({super.key});

  @override
  State<intro> createState() => introState();
}

class introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff6828c),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xfff6828c),
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(primary: Colors.white),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      'Welcome To Nabung',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Image.asset(
                      "assets/images/logo2.png",
                      width: 280,
                      height: 285,
                      alignment: Alignment.bottomCenter,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Aplikasi MoneyGement berguna sebagai alat pengontrol keuangan',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        width: 150,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Next",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                            SizedBox(width: 28.0),
                            Icon(Icons.arrow_forward_sharp,
                                color: Colors.white),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }),
        ));
  }
}
