import 'package:get/get.dart';

class RegisterAccountController extends GetxController {
  late String email;
  late String password;
  late String rePassword;
  RxList errors = [].obs;
}
