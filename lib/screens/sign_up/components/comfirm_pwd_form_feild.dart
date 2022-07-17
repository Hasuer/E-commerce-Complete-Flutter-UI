import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../controller/register_account_controller.dart';

class ComfirmPwdFormFeild extends StatelessWidget {
  const ComfirmPwdFormFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterAccountController registerAccountController =
        Get.put(RegisterAccountController());
    List errors = registerAccountController.errors;
    return TextFormField(
      onSaved: (newValue) => registerAccountController.password = newValue!,
      obscureText: true,
      cursorColor: kTextColor,
      onChanged: (value) {
        if (value != registerAccountController.password &&
            !errors.contains(kMatchPassError)) {
          errors.add(kMatchPassError);
        } else if (value == registerAccountController.password) {
          errors.remove(kMatchPassError);
        }
        registerAccountController.rePassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          return "";
        } else if (value != registerAccountController.password) {
          return "";
        } else if (errors.isNotEmpty) {
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Re-Enter your password",
          labelText: "Comfirm Passowrd",
          suffixIcon: CustomSuffixIcon(icon: "assets/icons/Lock.svg")),
    );
  }
}
