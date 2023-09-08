import 'package:flutter/material.dart';

class GetStartedWidget extends StatefulWidget {
  const GetStartedWidget({super.key});

  @override
  State<GetStartedWidget> createState() => Getstarted();
}

class Getstarted extends State<GetStartedWidget> {
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
        padding:EdgeInsets.all(20),
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,index) {
            return Column(
              children: [
                Text(
                  'Let’s get started!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/logo2.png',
                  width: 195,
                  height: 235,
                  alignment: Alignment.bottomCenter,
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                      width: 110,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
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