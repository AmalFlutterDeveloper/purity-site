// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/widgets/add_to_card_button.widget.dart';

class FoodProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String weight;
  final String oldPrice;
  final String newPrice;
  final VoidCallback? onPressed;
  const FoodProductItem({
    Key? key,
    required this.image,
    required this.title,
    required this.weight,
    required this.oldPrice,
    required this.newPrice,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      color: white,
      padding: edgeH24V8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 130,
            height: 130,
          ),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Cairo',
              fontSize: 20,
            ),
          ),
          space4,
          Text(
            weight,
            style: const TextStyle(
              fontFamily: 'Cairo',
              fontSize: 11,
            ),
          ),
          space4,
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              oldPrice,
              style: const TextStyle(
                decoration: TextDecoration.lineThrough,
                fontFamily: 'Cairo',
                fontSize: 16,
              ),
            ),
          ),
          Center(
            child: Text(
              newPrice,
              style: const TextStyle(
                fontFamily: 'Cairo',
                fontSize: 20,
                color: lightPrimary,
              ),
            ),
          ),
          space8,
          AddToCardButton(
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
