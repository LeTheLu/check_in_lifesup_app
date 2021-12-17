import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget_tagtime/chech_in_out.dart';
import 'widget_tagtime/day.dart';
import 'widget_tagtime/oclock.dart';

class TimeHome extends StatelessWidget {
  const TimeHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,right: 20, left: 20),
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 20.0,top: 20.0 ),
            child: Row(
              children: [
                const Icon(Icons.access_time, color: Colors.black87,size: 20,),
                const SizedBox(width: 5,),
                Text(
                  "Time : ",
                  style: Fonts.H1N,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Oclock(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DayTime(),
                  SizedBox(height: 50,),
                  CheckInOrOut(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
