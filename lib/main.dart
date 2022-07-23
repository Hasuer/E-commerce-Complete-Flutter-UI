import 'package:e_commerce_app_ui/routes.dart';
import 'package:e_commerce_app_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: const SplashScreen(),
      initialRoute: Routes.splashScreen,
      getPages: AppPages.pages,
      defaultTransition: Transition.fade,
    );
  }
}
