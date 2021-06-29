import 'package:flutter/material.dart';
import 'package:spacerobotics/sayfalar/anasayfa.dart';
import 'package:spacerobotics/sayfalar/girissayfasi.dart';
import 'package:spacerobotics/sayfalar/insidedegree.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: AnaSayfa(),
    );
  }
}

