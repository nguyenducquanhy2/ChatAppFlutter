import 'package:chat_app_flutter/ui/common/widget/outline_textfield.dart';
import 'package:chat_app_flutter/ui/screen/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/base/base_screen_widget.dart';
import '../../common/widget/check_have_account.dart';
import '../../common/widget/outline_textfield_password.dart';

class Login extends BaseScreenWidget<LoginController> {
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(theme: theme, title: 'appBarLogin'.tr),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            children: [
          SizedBox(height: size.height * 0.03),

          Image.asset(
            'assets/images/system.png',
            height: size.height * 0.25,
          ),
          SizedBox(height: size.height * 0.03),
          OutlineTextField(
            onValueChange: (value) => _email = value,
            label: 'email'.tr,
          ),
          SizedBox(height: size.height * 0.03),

          OutlineTextFieldPassword(
            label: 'password'.tr,
            onValueChange: (value) => _password = value,
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            children: [
              GestureDetector(
                  onTap: () => controller.navigateForgotPassScreen(),
                  child: Text('forgot_pass'.tr,
                      style:
                          theme.textTheme.titleMedium?.copyWith(fontSize: 16))),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: theme.primaryColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.2,
                  ),
                  elevation: 2),
              onPressed: () =>controller.login(_email,_password),
              child: Text(
                'appBarLogin'.tr,
                style: theme.textTheme.titleSmall?.copyWith(fontSize: 16,color: Colors.white),
              )),
          SizedBox(height: size.height * 0.02),
          CheckHaveAccount(
              isLogin: true, press: () => controller.navigateSignUpScreen()),
          SizedBox(height: size.height * 0.02),
          iconSocial(size)
        ]),
      ),
    );
  }

  Row iconSocial(Size size) {
    double sizeIconSocial = size.height * 0.08;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
            onTap: () {},
            child: Image.asset('assets/images/fb.png', height: sizeIconSocial)),
        GestureDetector(
            onTap: () {},
            child: Image.asset('assets/images/gg.png', height: sizeIconSocial)),
        GestureDetector(
            onTap: () {},
            child:
                Image.asset('assets/images/insta.png', height: sizeIconSocial)),
        GestureDetector(
            onTap: () {},
            child: Image.asset('assets/images/twitch.png',
                height: sizeIconSocial)),
      ],
    );
  }
}
