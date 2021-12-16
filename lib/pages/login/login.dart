import 'package:check_in_lifesup_app/pages/login/widget_login/buton_login.dart';
import 'package:check_in_lifesup_app/pages/login/widget_login/text_field_pass.dart';
import 'package:check_in_lifesup_app/pages/login/widget_login/text_field_user.dart';
import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.THEMECOLORS,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              EmailTextField(),
              SizedBox(height: 15,),
              PassTextField(),
              ButtonLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
