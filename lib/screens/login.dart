import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => loginState();
}

class loginState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6828c),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Log in',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Please login to  continue our app',
                style: TextStyle(
                  fontSize: 16,),
                  textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email Addres",
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                   Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                           contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                           suffixIcon: Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0x67013E),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.purple,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: (){}, 
                    child: Text('Log in',
                     style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                     ))),
                ),
                SizedBox(height: 20,),
                Text(
                  'or continue with',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Image.asset(
                  'assets/images/logo8.png',
                  width: 71,
                  height: 71,
                )
            ],
          ),
        ),
      ),
    );
  }
}