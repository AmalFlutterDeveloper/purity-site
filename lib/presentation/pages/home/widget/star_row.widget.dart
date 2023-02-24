import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/space.core.dart';

class StarRow extends StatelessWidget {
  final String title;
  const StarRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.star,
          color: lightPrimary,
        ),
        space4,
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 11,
            fontFamily: 'Cairo',
          ),
        )
      ],
    );
  }
}
