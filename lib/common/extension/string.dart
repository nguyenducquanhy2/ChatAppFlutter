import 'package:get/get.dart';

extension StringX on String{
  String? validateEmail() {
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(this)) {
      return 'invalid_email'.tr;
    }
    return null; // Nếu không có lỗi, trả về null
  }

  String? validatePassword() {
    final RegExp passwordRegex = RegExp(r'^(?=.*[a-z])(?=.*\d).{8,}$');

    if (!passwordRegex.hasMatch(this)) {
      return 'weak_password'.tr;
    }
    return null; // Nếu không có lỗi, trả về null
  }
}
