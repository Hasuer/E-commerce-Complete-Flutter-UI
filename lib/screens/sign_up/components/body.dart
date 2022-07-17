import 'package:e_commerce_app_ui/screens/sign_up/components/signup_form.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          Text(
            "Register Account",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const Text(
            "Complete your detail or continue \n with social media",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.06,
          ),
          const SignUpForm(),
        ],
      ),
    );
  }
}
