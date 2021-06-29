import 'package:flutter/material.dart';

class Fan extends StatefulWidget {
  @override
  _FanState createState() => _FanState();
}

class _FanState extends State<Fan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF9FF),
      body: ListView(children: [
        Stack(children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage("assets/son.png"),
              )),
            ),
            Container(
              height: 110,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/Başlıksız-3-removebg-preview.png"),
              )),
            ),
          ]),
          SizedBox(height: 30,),
          Center(child: Text(
                          "Fan",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF33558B),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),)
      ],),
      
    );
  }
}