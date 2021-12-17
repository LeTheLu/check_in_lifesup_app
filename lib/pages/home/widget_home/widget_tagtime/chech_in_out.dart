import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckInOrOut extends StatelessWidget {
  const CheckInOrOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 30,
      decoration: BoxDecoration(
          color: ColorsApp.BLUETHEME,
          borderRadius: const BorderRadius.all(
              Radius.circular(5)),
          border: Border.all(
            color: ColorsApp.DARKBLUE,
            width: 1,
          )),
      child: Text("Check In", style: Fonts.H3WHITE,),
    );
  }
}
