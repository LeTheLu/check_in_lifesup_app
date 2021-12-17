import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:check_in_lifesup_app/widgets/ball/ball.dart';
import 'package:check_in_lifesup_app/widgets/button/bigbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.THEMECOlOR,
      body: Stack(
        alignment: Alignment.center,
          children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 45),
                  child: SvgPicture.asset("assets/img/splash.svg")),
              Column(
                children: [
                  Text(
                    "Life's Up Time attendance ",
                    style: Fonts.H1,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  SizedBox(
                      height: 72,
                      width: 281,
                      child: Text(
                        "This application is used by Life's Up internal staff working on the client side!",
                        style: Fonts.H3,
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ],
          ),
        ),
        const Positioned(top: -70,left: 0, child: Ball()),
        Positioned(
            bottom: 95,
            child: BigButton(
              title: "Get Started",
              onTap: () {},
            ))
      ]),
    );
  }
}
