import 'package:chat_app_flutter/ui/screen/verify_account/verify_controller.dart';
import 'package:get/get.dart';

class VerifyBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyController());
  }

}