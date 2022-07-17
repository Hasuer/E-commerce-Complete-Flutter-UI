import 'package:e_commerce_app_ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account?"),
        GestureDetector(
          onTap: () => Get.toNamed(Routes.signUpScreen),
          child: const Text(
            " Sign up!",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
