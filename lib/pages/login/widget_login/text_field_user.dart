import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: ColorsApp.THEMECOLORSSECOND,
          width: 2
        ),
        borderRadius: const BorderRadius.all(Radius.circular(11),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration.collapsed(
              hintText: "User",
          hintStyle: TextStyle(color : ColorsApp.THEMECOLORS)),
        ),
      )
    );
  }
}
