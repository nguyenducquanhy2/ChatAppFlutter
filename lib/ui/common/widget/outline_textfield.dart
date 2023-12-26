
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

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