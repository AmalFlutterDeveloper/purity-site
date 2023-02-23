import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/widgets/header/header_title.widget.dart';

class HeaderItem extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback? onPressed;
  const HeaderItem({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 20,
            height: 20,
          ),
          space4,
          HeaderTitle(title: title),
        ],
      ),
    );
  }
}
