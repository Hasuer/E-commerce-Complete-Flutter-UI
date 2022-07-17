import 'package:e_commerce_app_ui/components/default_button.dart';
import 'package:e_commerce_app_ui/controller/complete_profile_controller.dart';
import 'package:e_commerce_app_ui/routes.dart';
import 'package:e_commerce_app_ui/screens/complete_profile/components/address_feild.dart';
import 'package:e_commerce_app_ui/screens/complete_profile/components/firstname_feild.dart';
import 'package:e_commerce_app_ui/screens/complete_profile/components/lastname_feild.dart';
import 'package:e_commerce_app_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../sign_in/components/form_error_text.dart';
import 'phone_number_feild.dart';

class CompleteProfileForm extends StatelessWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CompleteProfileController completeProfileController =
        Get.put(CompleteProfileController());
    final formkey = GlobalKey<FormState>();
    return Form(
      key: formkey,
      child: Obx(
        () => Column(
          children: [
            const FirstNameFeild(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const LastNameFeild(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const PhoneNumberFeild(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            const AddressFeild(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            // *出错信息
            Column(
              children: List.generate(
                completeProfileController.errors.length,
                (index) => FormErrorText(
                    error: completeProfileController.errors[index]),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            DefaultButton(
              text: "Continue",
              press: () {
                if (formkey.currentState!.validate()) {
                  // * GOTO OPT screen
                  Get.toNamed(Routes.otpScreen);
                }
              },
            ),
            const Text(
              "By contiuning your confirm that you agree \n with Term and Condition",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
