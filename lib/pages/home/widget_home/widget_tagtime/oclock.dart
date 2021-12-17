import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Oclock extends StatelessWidget {
  const Oclock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "10",
          style: Fonts.OCLOCK,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            ":",
            style: Fonts.OCLOCK,
          ),
        ),
        Text(
          "10",
          style: Fonts.OCLOCK,
        ),
      ],
    );
  }
}
