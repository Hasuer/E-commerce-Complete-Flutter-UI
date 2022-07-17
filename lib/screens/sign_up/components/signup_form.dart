import 'package:e_commerce_app_ui/components/default_button.dart';
import 'package:e_commerce_app_ui/controller/register_account_controller.dart';
import 'package:e_commerce_app_ui/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../size_config.dart';
import '../../sign_in/components/form_error_text.dart';
import '../../sign_in/components/social_card.dart';
import 'comfirm_pwd_form_feild.dart';
import 'email_form_feild.dart';
import 'password_form_feild.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterAccountController registerAccountController =
        Get.put(RegisterAccountController());
    final formKey = GlobalKey<FormState>();
    return Obx(
      () => Form(
        key: formKey,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              const EmailFormFeild(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              const PwdFormFeild(),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              const ComfirmPwdFormFeild(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Column(
                children: List.generate(
                  registerAccountController.errors.length,
                  (index) => FormErrorText(
                      error: registerAccountController.errors[index]),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              DefaultButton(
                text: "Continue",
                press: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    // 跳转到的歌完善首页页面
                    Get.toNamed(Routes.completeProfileScreen);
                  }
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight * .08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SocialCard(icon: "assets/icons/google-icon.svg"),
                  SocialCard(icon: "assets/icons/facebook-2.svg"),
                  SocialCard(icon: "assets/icons/twitter.svg"),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              const Text(
                "By contiuning your confirm that you agree \n with Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
