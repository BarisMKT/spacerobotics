import 'dart:async';

import 'package:flutter/material.dart';



class TimeInHourAndMinute extends StatefulWidget {
  @override
  _TimeInHourAndMinuteState createState() => _TimeInHourAndMinuteState();
}

class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  @override
  void initState() {
    super.initState();
     Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          // if you use _timeOfDay.hour then it will show 20:10 like that
          // But we want 8:10
          "${_timeOfDay.hourOfPeriod}:${_timeOfDay.minute}",
          style: TextStyle(fontSize: 14,color: Color(0xFF33558B)),
        ),
        SizedBox(width: 5),
        Container(
          
          child: Text(
            _period,
            style: TextStyle(fontSize: 14,color: Color(0xFF33558B)),
          ),
        ),
      ],
    );
  }
}