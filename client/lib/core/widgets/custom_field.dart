import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String hintext;
  final TextEditingController controller;
  final bool isObscureText;
  const CustomField({
    super.key,
    required this.hintext,
    required this.controller,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintext,
      ),
      controller: controller,
      obscureText: isObscureText,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return '$hintext is missing!';
        }
        return null;
      },
    );
  }
}
