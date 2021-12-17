import 'package:check_in_lifesup_app/pages/login/widget_login/text_field_pass.dart';
import 'package:check_in_lifesup_app/pages/login/widget_login/text_field_user.dart';
import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:check_in_lifesup_app/utils/fonts.dart';
import 'package:check_in_lifesup_app/widgets/ball/ball.dart';
import 'package:check_in_lifesup_app/widgets/button/bigbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.THEMECOlOR,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Welcome", style: Fonts.H1),
                        const SizedBox(height: 20,),
                        const SizedBox(height: 14),
                        SvgPicture.asset("assets/img/login.svg"),
                        const SizedBox(height: 20,),
                        Text("Please log in with the account that was provided earlier", style: Fonts.H2,textAlign: TextAlign.center),
                        const SizedBox(height: 49),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFieldNormal(title: "Enter your Email" ,),
                        const SizedBox(height: 21,),
                        PassTextField(),
                        const SizedBox(height: 21,),
                        Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: InkWell(
                            child: Text("Forgot Password", style: Fonts.H2H1BLUEW400,),
                          ),
                        ),
                        const SizedBox(height: 50,),
                        BigButton(title: "Register", onTap: (){}),
                        const SizedBox(height: 23,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account ?", style: Fonts.H3,),
                            const SizedBox(width: 10,),
                            GestureDetector(
                              onTap: (){},
                              child: Text("Sign In", style: Fonts.H2BLUE,),
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          Positioned(top: -70,left: 0, child: Ball()),
        ],
      ),
    );
  }
}
