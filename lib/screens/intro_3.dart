import 'package:flutter/material.dart';
import 'package:nabung/screens/login.dart';

class intro3 extends StatefulWidget {
  const intro3({super.key});

  @override
  State<intro3> createState() => _intro3State();
}

class _intro3State extends State<intro3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
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
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: PageView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      'Mendapat laporan tabungan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/images/logo6.png',
                      width: 195,
                      height: 235,
                      alignment: Alignment.bottomCenter,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Anda akan mendapatkan laporan tabungan yang anda kelola',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 10.0),
                        width: 250,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              'Let’s get started!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              width: 30,
                            ),
                            Icon(
                              Icons.arrow_forward_sharp,
                              size: 20,
                              color: Colors.white,
                            )
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
