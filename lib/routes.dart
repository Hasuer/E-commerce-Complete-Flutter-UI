
import 'package:e_commerce_app_ui/screens/forget_password/forget_password_screen.dart';
import 'package:e_commerce_app_ui/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_app_ui/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app_ui/screens/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes{
  static const splashScreen = '/spalshScreen';
  static const signInScreen = '/signInScreen';
  static const forgetPasswordScreen = '/forgetPasswordScreen';
  static const loginSuccessScreen = '/loginSuccessScreen';
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
  ];
}