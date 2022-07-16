
import 'package:e_commerce_app_ui/screens/splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes{
  static const splashScreen = '/spalshScreen';
  // static const NextScreen = '/NextScreen';
}

class AppPages{
  static final pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
  ];
}