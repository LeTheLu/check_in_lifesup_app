import 'package:check_in_lifesup_app/routes/pages.dart';
import 'package:check_in_lifesup_app/routes/routes.dart';
import 'package:check_in_lifesup_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      getPages: Pages.pages,
    );
  }
}
