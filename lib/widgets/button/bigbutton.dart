import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const BigButton({Key? key,required this.title,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 325,
      height: 62,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: ColorsApp.BLUETHEME,
      ),
      child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        onTap: (){
          onTap.call();
        },
          splashColor: Colors.white54,
          child: Center(child: Text(title, style: Fonts.H1WHITE,))),
    );
  }
}
