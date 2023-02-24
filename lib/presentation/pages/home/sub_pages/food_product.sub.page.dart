import 'package:flutter/material.dart';
import 'package:purity/presentation/pages/home/widget/food_product_item.widget.dart';

class FoodProductPage extends StatelessWidget {
  const FoodProductPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16.0,
          childAspectRatio: 0.65,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return FoodProductItem(
            image: 'assets/images/food_product/product1.png',
            weight: 'الوزن : 400 جرام',
            title: 'شاي ليبتون ناعم',
            oldPrice: '40 جنيه',
            newPrice: '30 جنيه',
            onPressed: () {},
          );
        },
      ),
    );
  }
}
