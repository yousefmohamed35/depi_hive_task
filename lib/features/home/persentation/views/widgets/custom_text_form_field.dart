import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.labelText,
    required this.controller,
    this.validator,
  });
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: border,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        border: border,
      ),
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}

final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide:
        const BorderSide(color: Colors.grey, width: 1) // Rounded corners
    );
