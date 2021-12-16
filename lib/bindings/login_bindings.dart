import 'package:check_in_lifesup_app/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }

}