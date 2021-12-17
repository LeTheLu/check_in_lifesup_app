import 'package:check_in_lifesup_app/pages/home/widget_home/tag_address.dart';
import 'package:check_in_lifesup_app/pages/home/widget_home/tag_time.dart';
import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:check_in_lifesup_app/widgets/ball/ball.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.THEMECOlOR,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: ColorsApp.BLUETHEME,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xff2B8E94), width: 3),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                image: ExactAssetImage(
                                    "assets/img/avataUserUnknown.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text(
                          "Welcome, User",
                          style: Fonts.H1WHITE,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      TimeHome(),
                      Address()
                    ],
                  ))
            ],
          ),
          const Positioned(
              top: -70,
              left: 0,
              child: Ball(
                isBackgroundWhite: true,
              )),
        ],
      ),
    );
  }
}
