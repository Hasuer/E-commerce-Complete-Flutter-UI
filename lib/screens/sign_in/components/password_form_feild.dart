import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../controller/sign_form_controller.dart';

class PwdFormFeild extends StatelessWidget {
  const PwdFormFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignFormController signFormController = Get.put(SignFormController());
    List errors = signFormController.errors;
    return TextFormField(
      onSaved: (newValue) => signFormController.password = newValue!,
      obscureText: true,
      cursorColor: kTextColor,
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kPassNullError);
        }
        if (value.length >= 8) {
          errors.remove(kShortPassError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          errors.add(kPassNullError);
          return "";
        } else if (value.length < 8 &&
            !errors.contains(kShortPassError) &&
            !errors.contains(kPassNullError)) {
          errors.add(kShortPassError);
          return "";
        } else if (errors.isNotEmpty) {
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your password",
          labelText: "Password",
          suffixIcon: CustomSuffixIcon(icon: "assets/icons/Lock.svg")),
    );
  }
}
