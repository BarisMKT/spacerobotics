import 'package:flutter/material.dart';
import 'package:spacerobotics/sayfalar/fan.dart';
import 'package:spacerobotics/sayfalar/girissayfasi.dart';
import 'package:spacerobotics/sayfalar/insidedegree.dart';
import 'package:spacerobotics/sayfalar/outsidedegree.dart';
import 'package:spacerobotics/sayfalar/robot.dart';
import 'package:flutter/material.dart';
import 'package:spacerobotics/sayfalar/time.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:intl/intl.dart';

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF9FF),
      body: ListView(
        children: [
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 70,
              ),
              Expanded(
                  child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text(
                          "30°C",
                          style:
                              TextStyle(fontSize: 30, color: Color(0xFF33558B)),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text( DateFormat('EEEE').format(DateTime.now()),
                        style: TextStyle(color: Color(0xFF33558B),fontSize: 14),),
                        SizedBox(width: 2,),
                        TimeInHourAndMinute()
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text(
                          "Good Morning,",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF33558B)),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 30),
                        Text(
                          "Harun!",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF33558B),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
                height: 230,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 6,
                          color: Colors.grey[300]),
                    ]),
              )),
              SizedBox(
                width: 70,
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      InsideDegree()));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Inside Degree",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF33558B)),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                  height: 120,
                                  child: SfRadialGauge(axes: <RadialAxis>[
                                    RadialAxis(
                                        interval: 10,
                                        startAngle: 0,
                                        endAngle: 360,
                                        showTicks: false,
                                        showLabels: false,
                                        axisLineStyle:
                                            AxisLineStyle(thickness: 13),
                                        pointers: <GaugePointer>[
                                          RangePointer(
                                              value: 73,
                                              width: 13,
                                              color: Color(0xFFEC6666),
                                              enableAnimation: true,
                                              cornerStyle:
                                                  CornerStyle.bothCurve)
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                              widget: Column(
                                                children: <Widget>[
                                                  Container(
                                                      width: 50.00,
                                                      height: 50.00,
                                                      ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 2, 0, 0),
                                                    child: Container(
                                                      child: Text('73°C',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              angle: 270,
                                              positionFactor: 0.1)
                                        ])
                                  ]))
                            ],
                          ),
                          height: 175,
                          width: (MediaQuery.of(context).size.width / 2) - 21,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                          height: 100, width: 2, color: Color(0xFF33558B)),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      OutsideDegree()));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Outside Degree",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF33558B)),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                  height: 120,
                                  child: SfRadialGauge(axes: <RadialAxis>[
                                    RadialAxis(
                                        interval: 10,
                                        startAngle: 0,
                                        endAngle: 360,
                                        showTicks: false,
                                        showLabels: false,
                                        axisLineStyle:
                                            AxisLineStyle(thickness: 13),
                                        pointers: <GaugePointer>[
                                          RangePointer(
                                              value: 42,
                                              width: 13,
                                              color: Color(0xFF79D2DE),
                                              enableAnimation: true,
                                              cornerStyle:
                                                  CornerStyle.bothCurve)
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                              widget: Column(
                                                children: <Widget>[
                                                  Container(
                                                      width: 50.00,
                                                      height: 50.00,
                                                      ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 2, 0, 0),
                                                    child: Container(
                                                      child: Text('42°C',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18)),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              angle: 270,
                                              positionFactor: 0.1)
                                        ])
                                  ]))
                            ],
                          ),
                          height: 175,
                          width: (MediaQuery.of(context).size.width / 2) - 21,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 175,
                      ),
                    ],
                  ),
                  height: 175,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            color: Colors.grey[300]),
                      ]),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Robot()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/robot.png"))),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 6,
                                color: Colors.grey[300]),
                          ]),
                      height: 270,
                      width: MediaQuery.of(context).size.width / 2 - 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  GirisSayfasi()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/system-icon-17.png"))))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 6,
                                color: Colors.grey[300]),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width / 2 - 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Fan()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/indir.png"))))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 6,
                                color: Colors.grey[300]),
                          ]),
                      height: 160,
                      width: MediaQuery.of(context).size.width / 2 - 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  GirisSayfasi()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/indir (1).png"))))
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 6,
                                color: Colors.grey[300]),
                          ]),
                      height: 270,
                      width: MediaQuery.of(context).size.width / 2 - 30,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}




