import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:flutter/cupertino.dart';

class DayTime extends StatelessWidget {
  const DayTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(7)),
        border: Border.all(
          color: ColorsApp.DARKBLUE,
          width: 2
        )
      ),
      child: Row(
        children: [
          Text(
            "03",
            style: Fonts.H2,
          ),
          Text("/ 01 /", style: Fonts.H2),
          Text("2021", style: Fonts.H2)
        ],
      ),
    );
  }
}
