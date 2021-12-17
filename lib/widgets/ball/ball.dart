import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  final bool isBackgroundWhite;


  const Ball({Key? key, this.isBackgroundWhite = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: 290,
      child: Stack(
        children: [
          Container(
                height: 200,
                width: 200,
            decoration: BoxDecoration(
              color: isBackgroundWhite ? Colors.white.withOpacity(0.2):ColorsApp.BLUETHEME.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            top: 70,
            left: -70,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: isBackgroundWhite ? Colors.white.withOpacity(0.2):ColorsApp.BLUETHEME.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
              ))
        ],
      ),
    );
  }
}
