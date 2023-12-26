import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseScreenWidget<T> extends GetView<T>{
  const BaseScreenWidget({super.key});

  AppBar buildAppBar({required ThemeData theme,required String title}) {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          title,
          style: theme.textTheme.titleMedium?.copyWith(fontSize: 20,color: Colors.white),
        ),
        backgroundColor: theme.primaryColor);
  }
}