import 'package:chat_app_flutter/ui/screen/verify_account/verify_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/base/base_screen_widget.dart';

class Verify extends BaseScreenWidget<VerifyController> {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(theme: theme, title: 'verifyAccount'.tr),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(children: [
              SizedBox(height: size.height * 0.05),

              Image.asset('assets/images/verification.png',height: size.height*0.3,),

              SizedBox(height: size.height * 0.05),

              Obx(() => Text(
                  'Email: ${controller.email.value}',
                  style: theme.textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600,color: Colors.red ,fontSize: 24),
                )),
              Text(
                'not_verify'.tr,
                style: theme.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.w600,color: Colors.red,fontSize: 24),
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                'verify_requite'.tr,
                style: theme.textTheme.titleLarge?.copyWith(fontWeight:FontWeight.w500,fontSize: 20,color: Colors.black54 ),
              ),
              SizedBox(height: size.height * 0.03),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                      ),
                      elevation: 2),
                  onPressed: (){},
                  child: Text(
                    'send_again'.tr,
                    style: theme.textTheme.titleSmall?.copyWith(fontSize: 16,color: Colors.white),
                  )),
        ]),
      )),
    );
  }
}
