import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';

class InputTextItem extends StatelessWidget {
  final String title;
  final IconData? icon;
  final TextInputType? keyboardType;
  const InputTextItem({
    Key? key,
    required this.title,
    this.icon,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: edgeH16V2,
          decoration: BoxDecoration(
            color: primary.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Cairo',
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 400,
          child: TextFormField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              suffixIcon: icon == null ? null : Icon(icon),
              suffixIconColor: lightPrimary,
              isDense: true,
              hintText: title,
              filled: true,
              fillColor: white,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: primary,
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        space16,
      ],
    );
  }
}
