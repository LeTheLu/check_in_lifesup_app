import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button_login_controller.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: Get.width,
      child: GetBuilder<ButtonLoginController>(
        init: ButtonLoginController(),
        builder: (controller) =>  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            controller.checkLoading ? const SizedBox() : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Đăng Nhập", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                const SizedBox(width: 10,),
                AnimatedContainer(
                    height: 7,
                    color: Colors.white,
                    width: controller.withButton,
                    duration: const Duration(milliseconds: 500)),
              ],
            ),
            controller.checkLoading ? const CircularProgressIndicator(color: Colors.white,) :Ink(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              child: InkWell(
                onTap: (){
                  controller.withButton = 10;
                  controller.update();
                  Future.delayed(const Duration(milliseconds: 500),(){
                    controller.checkLoading = true;
                    controller.update();
                  });
                },
                child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
