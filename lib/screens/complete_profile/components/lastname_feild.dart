import 'package:e_commerce_app_ui/controller/complete_profile_controller.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';

class LastNameFeild extends StatelessWidget {
  const LastNameFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CompleteProfileController completeProfileController =
        Get.put(CompleteProfileController());
    List errors = completeProfileController.errors;
    return TextFormField(
      onSaved: (newValue) => completeProfileController.lastName = newValue!,
      cursorColor: kTextColor,
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kNamelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNamelNullError)) {
          errors.add(kNamelNullError);
          return "";
        } else if (errors.isNotEmpty) {
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your LastName",
          labelText: "Last Name",
          suffixIcon: CustomSuffixIcon(icon: "assets/icons/User.svg")),
    );
  }
}
