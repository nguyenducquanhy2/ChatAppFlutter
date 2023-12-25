import 'package:chat_app_flutter/theme/app_theme.dart';
import 'package:chat_app_flutter/ui/screen/intro/intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Intro extends GetView<IntroController> {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: const Text('Flutter Demo Theme',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 24,
              letterSpacing: 0,
            )),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150),
            Text(
              'Hello Material 3',
              style: theme.textTheme.headlineLarge,
            ),
            Text(
              'Subtitle',
              style: theme.textTheme.subtitle1,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark mode",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Switch(
                    value: Get.isDarkMode ? true : false,
                    activeColor: theme.colorScheme.primary,
                    onChanged: (bool value) {
                      value
                          ? Get.changeTheme(AppTheme.darkTheme)
                          : Get.changeTheme(AppTheme.lightTheme);
                    },
                  ),
                  Switch(
                    value: false,
                    activeColor: theme.colorScheme.primary,
                    onChanged: (bool value) {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
