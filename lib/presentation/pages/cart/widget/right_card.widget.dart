import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/space.core.dart';

class RightCard extends StatelessWidget {
  const RightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/food_product/product1.png',
          width: 130,
          height: 130,
          fit: BoxFit.cover,
        ),
        space4,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'شاي ليبتون ناعم',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 20,
              ),
            ),
            space4,
            const Text(
              'شاي ليبتون 400 جرام',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 12,
              ),
            ),
            space4,
            Row(
              children: const [
                Text(
                  '18جنيه',
                  style: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 22,
                    color: lightPrimary,
                  ),
                ),
                space4,
                Text(
                  '20جنيه',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontFamily: 'Cairo',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
