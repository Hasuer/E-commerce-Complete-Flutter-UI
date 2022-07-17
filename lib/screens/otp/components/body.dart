import 'package:e_commerce_app_ui/components/default_button.dart';
import 'package:e_commerce_app_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * .05,
          ),
          Text(
            "OTP Verification",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(28),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const Text("we will send your code to +1 898 860 ***"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("This code will expired in "),
              TweenAnimationBuilder<int>(
                tween: IntTween(begin: 30, end: 0),
                duration: const Duration(seconds: 30),
                builder: (context, value, child) => Text(
                  "00:$value",
                  style: const TextStyle(color: kPrimaryColor),
                ),
                onEnd: () {},
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.screenHeight * .1,
          ),
          buildPinput(),
          SizedBox(
            height: SizeConfig.screenHeight * .1,
          ),
          DefaultButton(text: "Continue", press: () {}),
          const Spacer(),
          const Text(
            "Resend otp code",
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * .05,
          ),
        ],
      ),
    );
  }

  Pinput buildPinput() {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      validator: (s) {
        return s == '2222' ? null : 'Pin is incorrect';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) => print(pin),
    );
  }
}
