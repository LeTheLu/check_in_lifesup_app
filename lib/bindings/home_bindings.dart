import 'package:check_in_lifesup_app/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}