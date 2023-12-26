import 'package:chat_app_flutter/network/repository/auth.dart';
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

    String? validEmail = _validateEmail(email);
    if (validEmail != null) {
      showToast(message: validEmail);
      return;
    }

    String? validPassword = _validatePassword(password);
    if (validPassword != null) {
      showToast(message: validPassword);
      return;
    }

    Authentication().login(
        email: email,
        password: password,
        success: () {
          Get.toNamed(RoutesName.homeScreen);
        },
        error: (message) {
          showToast(message: message);
        });
  }

  String? _validateEmail(String email) {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(email)) {
      return 'invalid_email'.tr;
    }
    return null; // Nếu không có lỗi, trả về null
  }

  String? _validatePassword(String password) {
    final RegExp passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*\d).{8,}$');

    if (!passwordRegex.hasMatch(password)) {
      return 'weak_password'.tr;
    }
    return null; // Nếu không có lỗi, trả về null
  }

  void showToast({required String message}) {
    Fluttertoast.showToast(msg: message);
  }
}