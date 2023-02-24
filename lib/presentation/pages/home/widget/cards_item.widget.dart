// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/home/widget/star_row.widget.dart';
import 'package:purity/presentation/widgets/add_to_card_button.widget.dart';

class CardsItem extends StatelessWidget {
  final String image;
  final String offer;
  final String title;
  final List<String> benefits;
  const CardsItem({
    Key? key,
    required this.image,
    required this.offer,
    required this.title,
    required this.benefits,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: white,
      padding: edgeH24V8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 250,
            height: 200,
          ),
          space8,
          Container(
            alignment: Alignment.center,
            width: double.maxFinite,
            padding: edgeH24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: lightPrimary,
            ),
            child: Text(
              offer,
              style: const TextStyle(
                fontFamily: 'Cairo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: white,
              ),
            ),
          ),
          space8,
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: lightPrimary,
              ),
            ),
          ),
          space4,
          Column(children: benefits.map((e) => StarRow(title: e)).toList()),
          space8,
          AddToCardButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
