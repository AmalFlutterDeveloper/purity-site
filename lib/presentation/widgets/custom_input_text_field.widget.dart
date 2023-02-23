import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';

class CustomInputTextField extends StatelessWidget {
  final String title;
  final TextInputType? keyboardType;
  final bool autofocus;
  final bool obscureText;

  const CustomInputTextField({
    Key? key,
    required this.title,
    this.keyboardType,
    this.autofocus = false,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        hintText: title,
        labelStyle: const TextStyle(color: primary),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primary),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
