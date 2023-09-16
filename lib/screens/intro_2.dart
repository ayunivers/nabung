import 'package:flutter/material.dart';
import 'package:nabung/screens/intro_3.dart';

class intro2 extends StatefulWidget {
  const intro2({super.key});

  @override
  State<intro2> createState() => _intro2State();
}

class _intro2State extends State<intro2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => intro3(),
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
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            child: Text(
              'Skip',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
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
                  'Ambil uang tabungan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/logo5.png',
                  width: 250,
                  height: 255,
                  alignment: Alignment.bottomCenter,
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Anda dapat mengambil uang tabungan yang anda miliki',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
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
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
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
          },
        ),
      ),
    );
  }
}
