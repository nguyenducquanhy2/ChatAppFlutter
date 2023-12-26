import 'package:chat_app_flutter/ui/common/base/base_screen_widget.dart';
import 'package:chat_app_flutter/ui/common/widget/outline_textfield.dart';
import 'package:chat_app_flutter/ui/screen/forgot_pass/fogot_pass_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPass extends BaseScreenWidget<ForgotPassController> {
   ForgotPass({super.key});
  String _email='';
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(theme: theme, title: 'appBarForgotPass'.tr),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(

            child: Column(children: [

              Image.asset('assets/images/forgotpassword.png',height: size.height*0.3,),
              SizedBox(height: size.height*0.03),
              OutlineTextField(onValueChange: (value)=>_email=value, label: 'email'.tr),
              SizedBox(height: size.height*0.03),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: theme.primaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.2,
                      ),
                      elevation: 2),
                  onPressed: ()=>controller.requestResetPass(),
                  child: Text(
                    'appBarForgotPass'.tr,
                    style: theme.textTheme.titleSmall?.copyWith(fontSize: 16,color: Colors.white),
                  ))

        ]),
      )),
    );
  }
}
