import 'package:flutter/material.dart';

class CheckHaveAccount extends StatelessWidget {
  final bool isLogin;
  final void Function()? press;

  const CheckHaveAccount(
      {super.key, required this.isLogin, required this.press});

  final String questionScreenLogin = "Don't have an Account ? ";
  final String questionScreenSignUp = 'Already have an Account ? ';

  final String btnScreenLogin = 'Sign Up';
  final String btnScreenSignUp = 'Sign In';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(isLogin ? questionScreenLogin : questionScreenSignUp,
            style: theme.textTheme.titleMedium
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.normal)),
        GestureDetector(
          onTap: press,
          child: Text(
            isLogin ? btnScreenLogin : btnScreenSignUp,
            style: theme.textTheme.titleMedium
                ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}