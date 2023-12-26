import 'package:chat_app_flutter/ui/screen/forgot_pass/fogot_pass_controller.dart';
import 'package:get/get.dart';

class ForgotPassBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPassController());
  }

}