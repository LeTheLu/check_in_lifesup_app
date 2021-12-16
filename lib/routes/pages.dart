import 'package:check_in_lifesup_app/bindings/inital_bindings.dart';
import 'package:check_in_lifesup_app/pages/inital_page/init_page.dart';
import 'package:check_in_lifesup_app/pages/login/login.dart';
import 'package:check_in_lifesup_app/routes/routes.dart';
import 'package:get/get.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const InitialPage(),
      binding: InitalPageBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: Routes.LOGIN_PAGE,
      page: () => const LoginPage(),
    ),
  ];
}
