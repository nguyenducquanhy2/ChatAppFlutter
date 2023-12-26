import 'package:chat_app_flutter/ui/common/widget/outline_textfield.dart';
import 'package:chat_app_flutter/ui/common/widget/outline_textfield_password.dart';
import 'package:chat_app_flutter/ui/screen/sign_up/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/base/base_screen_widget.dart';
import '../../common/widget/check_have_account.dart';

class SignUp extends BaseScreenWidget<SignUpController> {
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(theme: theme, title: 'appBarSignUp'.tr),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.03),
                Image.asset(
                  'assets/images/checklist.png',
                  width: size.height * 0.3,
                ),
                SizedBox(height: size.height * 0.05),

                OutlineTextField(onValueChange: (value)=>_email=value, label: 'email'.tr),

                SizedBox(height: size.height * 0.03),

                OutlineTextFieldPassword(onValueChange: (value) =>_password=value , label: 'password'.tr),

                SizedBox(height: size.height * 0.03),

                OutlineTextFieldPassword(onValueChange: (value) =>_confirmPassword=value , label: 'confirmPassword'.tr),

                SizedBox(height: size.height * 0.03),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.primaryColor,
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.2,
                        ),
                        elevation: 2),
                    onPressed: ()=>controller.navigateVerifyScreen(),
                    child: Text(
                      'appBarSignUp'.tr,
                      style: theme.textTheme.titleSmall?.copyWith(fontSize: 16,color: Colors.white),
                    )),

                SizedBox(height: size.height * 0.03),

                CheckHaveAccount(
                    isLogin: false, press: () => controller.navigateLoginScreen()),
              ],
            ),
          )),
    );
  }
}