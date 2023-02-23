// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:purity/core/constant/colors.core.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  const CustomButton({
    Key? key,
    required this.title,
    this.color = primary,
    this.padding,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: padding,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: white,
          fontFamily: 'Segoe UI',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
