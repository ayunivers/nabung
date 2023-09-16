import 'dart:js';

import 'package:flutter/material.dart';
import 'package:nabung/screens/intro_2.dart';

class intro1 extends StatefulWidget {
  const intro1({super.key});

  @override
  State<intro1> createState() => _intro1State();
}

class _intro1State extends State<intro1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Navigator.push(
        context as BuildContext,
        MaterialPageRoute(
          builder: (context) => intro2(),
        ));
  }

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
                    'Menambahkan Nominal Tabungan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "assets/images/logo7.png",
                    width: 250,
                    height: 210,
                    alignment: Alignment.bottomCenter,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Anda dapat secara teratur menambahkan jumlah tabungan anda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                            'Next',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
