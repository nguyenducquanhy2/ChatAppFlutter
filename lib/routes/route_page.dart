
import 'package:chat_app_flutter/routes/route_name.dart';
import 'package:chat_app_flutter/ui/screen/forgot_pass/fogot_pass.dart';
import 'package:chat_app_flutter/ui/screen/forgot_pass/fogot_pass_binding.dart';
import 'package:chat_app_flutter/ui/screen/home/home.dart';
import 'package:chat_app_flutter/ui/screen/home/home_binding.dart';
import 'package:chat_app_flutter/ui/screen/intro/intro.dart';
import 'package:chat_app_flutter/ui/screen/intro/intro_binding.dart';
import 'package:chat_app_flutter/ui/screen/login/login.dart';
import 'package:chat_app_flutter/ui/screen/login/login_binding.dart';
import 'package:chat_app_flutter/ui/screen/sign_up/sign_up.dart';
import 'package:chat_app_flutter/ui/screen/sign_up/sign_up_binding.dart';
import 'package:chat_app_flutter/ui/screen/verify_account/verify.dart';
import 'package:chat_app_flutter/ui/screen/verify_account/verify_binding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutesPage{
  static String INITTIAL_PAGE=RoutesName.login;

  static List<GetPage> routes=[
    GetPage(name: RoutesName.intro,page: () => const Intro(),binding: IntroBinding()),
    GetPage(name: RoutesName.login,page: () => Login(),binding: LoginBinding()),
    GetPage(name: RoutesName.signUp,page: () => SignUp(),binding: SignUpBinding()),
    GetPage(name: RoutesName.forgotPass,page: () => ForgotPass(),binding: ForgotPassBinding()),
    GetPage(name: RoutesName.homeScreen,page: () => Home(),binding: HomeBinding()),
    GetPage(name: RoutesName.verifyAccount,page: () => Verify(),binding: VerifyBinding()),
  ];

}