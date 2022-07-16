import 'package:flutter/material.dart';

import '../../../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(
      children: [
        TextSpan(text: "Dont have an account?"),
        TextSpan(text: " Sign up!", style: TextStyle(color: kPrimaryColor)),
      ],
    ));
  }
}
