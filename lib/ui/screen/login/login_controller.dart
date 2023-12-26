import 'package:chat_app_flutter/routes/route_name.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  RxBool isPasswordType=true.obs;

  void navigateSignUpScreen()=> Get.toNamed(RoutesName.signUp);
  void navigateForgotPassScreen()=> Get.toNamed(RoutesName.forgotPass);
}