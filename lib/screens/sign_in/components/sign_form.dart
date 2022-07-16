import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../controller/sign_form_controller.dart';
import '../../../routes.dart';
import '../../../size_config.dart';
import 'email_form_feild.dart';
import 'form_error_text.dart';
import 'password_form_feild.dart';

class SignForm extends StatelessWidget {
  const SignForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignFormController signFormController = Get.put(SignFormController());
    final formKey = GlobalKey<FormState>();
    return Obx(
      () => Form(
        key: formKey,
        child: Column(
          children: [
            // *两个输入框
            const EmailFormFeild(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const PwdFormFeild(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),

            // *协议和忘记密码
            Row(
              children: [
                Checkbox(
                    fillColor: MaterialStateProperty.all(kPrimaryColor),
                    value: signFormController.remember.value,
                    onChanged: (newValue) {
                      signFormController.remember.value = newValue!;
                    }),
                const Text("Remember me"),
                const Spacer(),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.forgetPasswordScreen),
                  child: const Text(
                    "Forget Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            // *出错信息
            Column(
              children: List.generate(
                signFormController.errors.length,
                (index) =>
                    FormErrorText(error: signFormController.errors[index]),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            // *按钮
            DefaultButton(
                text: "Continue",
                press: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Get.offAllNamed(Routes.loginSuccessScreen);
                  }
                }),
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailFromFeild(SignFormController signFormController) {
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
