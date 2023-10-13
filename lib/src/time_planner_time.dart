import 'package:flutter/material.dart';
import 'package:time_planner/src/config/global_config.dart' as config;

/// Show the hour for each row of time planner
class TimePlannerTime extends StatelessWidget {
  /// Text it will be show as hour
  final String? time;
  final bool? setTimeOnAxis;
  final Color? color;

  /// Show the hour for each row of time planner
  const TimePlannerTime({
    Key? key,
    this.time,
    this.setTimeOnAxis,
    this.color,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: config.cellHeight!.toDouble() - 1,
      width: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        child: setTimeOnAxis!
            ? Text(
                time!,
                style: TextStyle(color: color, fontFamily: 'Quicksand'),
              )
            : Center(
                child: Text(
                time!,
                style: TextStyle(color: color, fontFamily: 'Quicksand'),
              )),
      ),
    );
  }
}
