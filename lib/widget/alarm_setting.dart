import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:myalarm/model/alarm.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:myalarm/widget/alarm.dart';

class AlarmRoot extends HookWidget {
  final AlarmState alarm;
  AlarmRoot({
    Key key,
    @required this.alarm,
  }) : super(key: key);

  Widget build(BuildContext context) {
    DateTime _time;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Text('${alarm.state.mount}'),
          TimePickerSpinner(
            time: DateTime.parse(alarm.time),
            is24HourMode: true,
            spacing: 40,
            itemHeight: 80,
            isForce2Digits: false,
            onTimeChange: (time) {
              print("displayed time is ${time}");
              DateTime _now = DateTime.now();
              if (time.isAfter(_now)) {
                _time = time;
              } else {
                _time = time.add(Duration(days: 1));
              }
              ;
              print("set time is ${_time}");
            },
          ),
          RaisedButton(
            onPressed: () {
              print('alarm will be set to ${_time}');
              context
                  .read(alarmListProvider)
                  .setAlarm(alarm, _time.toIso8601String());
              Navigator.pop(context);
            },
            child: Text('set'),
            color: Colors.blue,
          ),
        ],
      )),
    );
  }

  //Routing Method
  // static Route<dynamic> route() {
  //   return MaterialPageRoute(
  //     builder: (context) => AlarmRoot(state: ,),
  //   );
  // }
}
