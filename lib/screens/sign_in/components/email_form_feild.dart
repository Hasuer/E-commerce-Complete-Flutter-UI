import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../controller/sign_form_controller.dart';

class EmailFormFeild extends StatelessWidget {
  const EmailFormFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignFormController signFormController = Get.put(SignFormController());
    List errors = signFormController.errors;
    return TextFormField(
      onSaved: (newValue) => signFormController.eamil = newValue!,
      cursorColor: kTextColor,
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kEmailNullError);
        }
        if (emailValidatorRegExp.hasMatch(value)) {
          errors.remove(kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          errors.add(kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError) &&
            !errors.contains(kEmailNullError)) {
          errors.add(kInvalidEmailError);
          return "";
        } else if (errors.isNotEmpty) {
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your email",
          labelText: "Email",
          suffixIcon: CustomSuffixIcon(icon: "assets/icons/Mail.svg")),
    );
  }
}
