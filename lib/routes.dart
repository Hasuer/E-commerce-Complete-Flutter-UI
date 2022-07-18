
import 'package:e_commerce_app_ui/screens/forget_password/forget_password_screen.dart';
import 'package:e_commerce_app_ui/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_app_ui/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app_ui/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce_app_ui/screens/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/otp/otp_screen.dart';

class Routes{
  static const splashScreen = '/spalshScreen';
  static const signInScreen = '/signInScreen';
  static const forgetPasswordScreen = '/forgetPasswordScreen';
  static const loginSuccessScreen = '/loginSuccessScreen';
  static const signUpScreen = '/signUpScreen';
  static const completeProfileScreen = '/completeProfileScreen';
  static const otpScreen = '/otpScreen';
  static const homeScreen = '/homeScreen';
}

class AppPages{
  static final pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.signInScreen,
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: Routes.forgetPasswordScreen,
      page: () => const ForgetPasswordScreen(),
    ),
    GetPage(
      name: Routes.loginSuccessScreen,
      page: () => const LoginSuccessScreen(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: Routes.completeProfileScreen,
      page: () => const CompleteProfileScreen(),
    ),
    GetPage(
      name: Routes.otpScreen,
      page: () => const OtpScreen(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
  ];
}