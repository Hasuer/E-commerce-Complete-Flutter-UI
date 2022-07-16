import 'package:e_commerce_app_ui/screens/splash/components/body.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import "package:flutter/material.dart";

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
