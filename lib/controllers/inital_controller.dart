import 'package:check_in_lifesup_app/routes/routes.dart';
import 'package:get/get.dart';

class InitalController extends GetxController{
  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 2),(){Get.toNamed(Routes.LOGIN_PAGE);});
    super.onReady();
  }
}