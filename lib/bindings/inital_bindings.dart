import 'package:check_in_lifesup_app/controllers/inital_controller.dart';
import 'package:get/get.dart';

class InitalPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(InitalController());
  }

}