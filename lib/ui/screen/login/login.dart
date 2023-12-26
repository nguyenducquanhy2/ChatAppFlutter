import 'package:chat_app_flutter/ui/screen/login/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Login extends GetView<LoginController> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'appBarLogin'.tr,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 24,
              letterSpacing: 0,
            ),
          ),
          backgroundColor: theme.primaryColor),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          Image.asset(
            'assets/images/system.png',
            height: size.height * 0.25,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          OutlineTextField(
            onValueChange: (value) => email = value,
            label: 'email'.tr,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          OutlineTextFieldPassword(
            label: 'password'.tr,
            onValueChange: (value) => password = value,
          ),
          Row(
            children: [
              GestureDetector(onTap: () =>controller.navigateForgotPassScreen(),child: Text('forgot_pass'.tr,style: theme.textTheme.titleMedium)),
            ],
          )
        ]),
      ),
    );
  }
}

class OutlineTextFieldPassword extends StatelessWidget {

  OutlineTextFieldPassword({
    super.key,
    required this.onValueChange,
    required this.label,
  });
  var isPass=true.obs;

  final Function(String) onValueChange;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return TextField(
          obscureText: isPass.value,
          onChanged: onValueChange,
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  isPass.value =
                  !isPass.value;
                },
                child: Icon(isPass.value
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
              label: Text(label),
              border: const OutlineInputBorder()),
        );

      },
    );
  }
}

class OutlineTextField extends GetView {
  final Function(String) onValueChange;
  final String label;

  const OutlineTextField({
    super.key,
    required this.onValueChange,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onValueChange,
      decoration: InputDecoration(
          label: Text(label), border: const OutlineInputBorder()),
    );
  }
}
