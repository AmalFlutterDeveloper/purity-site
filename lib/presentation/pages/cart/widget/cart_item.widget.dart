import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/cart/widget/counter_item.widget.dart';
import 'package:purity/presentation/pages/cart/widget/right_card.widget.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edgeH16V8,
      color: white,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const RightCard(),
          Column(
            children: [
              const CounterItem(),
              space16,
              Row(
                children: [
                  const Text(
                    'الغاء المنتج',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Segoe UI',
                    ),
                  ),
                  space16,
                  GestureDetector(
                    child: SvgPicture.asset(
                      'assets/images/icons/delete.svg',
                    ),
                    onTap: () {},
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
