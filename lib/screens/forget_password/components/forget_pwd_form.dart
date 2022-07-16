import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../controller/forget_form_controller.dart';
import '../../../size_config.dart';
import '../../sign_in/components/form_error_text.dart';
import '../../sign_in/components/no_account_text.dart';

class ForgetPwdForm extends StatelessWidget {
  const ForgetPwdForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    ForgetPwdController forgetPwdController = Get.put(ForgetPwdController());
    return Form(
        key: formKey,
        child: Obx(
          () => Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(
                      SizeConfig.screenHeight * 0.1),
                ),
                buildEmailFromFeild(forgetPwdController),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                // *出错信息
                Column(
                  children: List.generate(
                    forgetPwdController.errors.length,
                    (index) =>
                        FormErrorText(error: forgetPwdController.errors[index]),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(
                      SizeConfig.screenHeight * 0.1),
                ),
                // *按钮
                DefaultButton(
                  text: "Continue",
                  press: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    }
                  },
                ),
                // const Spacer(),
                // *NoAccountText
                SizedBox(
                  height: getProportionateScreenHeight(
                      SizeConfig.screenHeight * 0.1),
                ),
                const NoAccountText(),
              ],
            ),
          ),
        ));
  }

  TextFormField buildEmailFromFeild(ForgetPwdController forgetPwdController) {
    List errors = forgetPwdController.errors;
    return TextFormField(
      onSaved: (newValue) => forgetPwdController.eamil = newValue!,
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
