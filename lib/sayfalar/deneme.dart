import 'package:flutter/material.dart';
import 'package:spacerobotics/sayfalar/fan.dart';
import 'package:spacerobotics/sayfalar/girissayfasi.dart';
import 'package:spacerobotics/sayfalar/insidedegree.dart';
import 'package:spacerobotics/sayfalar/outsidedegree.dart';
import 'package:spacerobotics/sayfalar/robot.dart';
import 'package:flutter/material.dart';
import 'package:control_pad/control_pad.dart';


class Joystick extends StatefulWidget {
  @override
  _JoystickState createState() => _JoystickState();
}

class _JoystickState extends State<Joystick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: JoystickView()
      
    );
  }
}