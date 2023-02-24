// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/home/widget/cards_item.widget.dart';
import 'package:purity/presentation/widgets/header/header.widget.dart';
import 'package:purity/presentation/widgets/side_bar.widget.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: .65,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return CardsItem(
            image: 'assets/images/cards/card1.png',
            offer: 'عرض ال 3 كيلو',
            title: 'استبدلي 5 كيلو زيت  مستعمل بالتالي ',
            benefits: List.generate(
              5,
              (index) => 'عدد ( 1) كيلو أرز الضحى',
            ),
          );
        },
      ),
    );
  }
}
