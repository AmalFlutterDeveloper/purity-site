import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';

class HeaderTitle extends StatelessWidget {
  final String title;
  const HeaderTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        fontFamily: 'Segoe UI',
        color: white,
      ),
    );
  }
}
