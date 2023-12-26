import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class OutlineTextFieldPassword extends StatelessWidget {
  OutlineTextFieldPassword({
    super.key,
    required this.onValueChange,
    required this.label,
  });

  var isPass = true.obs;

  final Function(String) onValueChange;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextField(
          obscureText: isPass.value,
          onChanged: onValueChange,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    isPass.value = !isPass.value;
                  },
                  icon: Icon(
                      isPass.value ? Icons.visibility : Icons.visibility_off)),
              label: Text(label),
              border: const OutlineInputBorder()),
        ));
  }
}
