import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';

class AvatarCounter extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const AvatarCounter({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: lightPrimary,
      child: IconButton(
        padding: edge0,
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: white,
          size: 35,
        ),
      ),
    );
  }
}
