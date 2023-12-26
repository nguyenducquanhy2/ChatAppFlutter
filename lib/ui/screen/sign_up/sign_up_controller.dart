import 'package:chat_app_flutter/routes/route_name.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{
  void navigateLoginScreen()=>Get.offAllNamed(RoutesName.login);
  void navigateVerifyScreen()=>Get.offNamed(RoutesName.verifyAccount);
}