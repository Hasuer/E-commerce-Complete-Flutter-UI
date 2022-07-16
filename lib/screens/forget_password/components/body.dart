import "package:flutter/material.dart";

import '../../../size_config.dart';
import 'forget_pwd_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Forget Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Please enter your email and we will send \n you a link to return your account",
              textAlign: TextAlign.center,
            ),
            const ForgetPwdForm(),
          ],
        ),
      ),
    );
  }
}
