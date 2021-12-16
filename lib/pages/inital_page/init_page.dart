import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/logo/logoLifesUp.png"),
              const Positioned(
                bottom: 20,
                  child: Text("by Life'sUp team", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),))
            ],
          ),
        ),
      ),
    );
  }
}
