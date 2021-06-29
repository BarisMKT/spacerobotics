import 'package:flutter/material.dart';
import 'package:spacerobotics/sayfalar/anasayfa.dart';

class Robot extends StatefulWidget {
  @override
  _RobotState createState() => _RobotState();
}

class _RobotState extends State<Robot> {
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
                          "Robot",
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