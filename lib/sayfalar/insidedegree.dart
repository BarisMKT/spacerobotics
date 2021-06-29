import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class InsideDegree extends StatefulWidget {
  @override
  _InsideDegreeState createState() => _InsideDegreeState();
}

class _InsideDegreeState extends State<InsideDegree> {
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
                          "Inside Degree",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF33558B),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),),
                        SizedBox(height: 30,),
                              Container(
                                  height: 170,
                                  child: SfRadialGauge(axes: <RadialAxis>[
                                    RadialAxis(
                                        interval: 10,
                                        startAngle: 0,
                                        endAngle: 360,
                                        showTicks: false,
                                        showLabels: false,
                                        axisLineStyle:
                                            AxisLineStyle(thickness: 17),
                                        pointers: <GaugePointer>[
                                          RangePointer(
                                              value: 73,
                                              width: 17,
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
                                                      SizedBox(height: 20,),
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
      ],),
      
    );
  }
}