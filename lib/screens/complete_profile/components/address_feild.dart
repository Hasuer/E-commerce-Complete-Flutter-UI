import 'package:e_commerce_app_ui/controller/complete_profile_controller.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';

class AddressFeild extends StatelessWidget {
  const AddressFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CompleteProfileController completeProfileController =
        Get.put(CompleteProfileController());
    List errors = completeProfileController.errors;
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => completeProfileController.address = newValue!,
      cursorColor: kTextColor,
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          errors.add(kAddressNullError);
          return "";
        } else if (errors.isNotEmpty) {
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Enter your address",
          labelText: "Address",
          suffixIcon:
              CustomSuffixIcon(icon: "assets/icons/Location point.svg")),
    );
  }
}
