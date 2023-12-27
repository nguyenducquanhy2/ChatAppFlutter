import 'package:chat_app_flutter/common/extension/string.dart';
import 'package:chat_app_flutter/network/repository/auth_repository.dart';
import 'package:chat_app_flutter/routes/route_name.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  void navigateSignUpScreen() => Get.toNamed(RoutesName.signUp, arguments: 2);

  void navigateForgotPassScreen() => Get.toNamed(RoutesName.forgotPass);

  void login(String email, String password) {
    if (email.isEmpty || password.isEmpty) {
      showToast(message: 'empty_field'.tr);
      return;
    }

    final validEmail = email.validateEmail();
    if (validEmail != null) {
      showToast(message: validEmail);
      return;
    }

    final validPassword = password.validatePassword();
    if (validPassword != null) {
      showToast(message: validPassword);
      return;
    }

    Authentication.login(
        email: email,
        password: password,
        success: () {
          Get.toNamed(RoutesName.homeScreen);
        },
        error: (message) {
          showToast(message: message);
        });
  }

  void showToast({required String message}) {
    Fluttertoast.showToast(msg: message);
  }
}