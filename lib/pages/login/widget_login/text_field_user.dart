import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldNormal extends StatelessWidget {
  final String title;
  const TextFieldNormal({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 51,
      width: 325,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(22),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration.collapsed(
              hintText: title,
          hintStyle: Fonts.H3),
        ),
      )
    );
  }
}
