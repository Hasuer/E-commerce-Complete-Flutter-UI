import 'package:e_commerce_app_ui/controller/complete_profile_controller.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';

class PhoneNumberFeild extends StatelessWidget {
  const PhoneNumberFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CompleteProfileController completeProfileController =
        Get.put(CompleteProfileController());
    List errors = completeProfileController.errors;
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => completeProfileController.phoneNumber = newValue!,
      cursorColor: kTextColor,
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          errors.add(kPhoneNumberNullError);
          return "";
        } else if (errors.isNotEmpty) {
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your phone number",
          labelText: "Phone number",
          suffixIcon: CustomSuffixIcon(icon: "assets/icons/Phone.svg")),
    );
  }
}
