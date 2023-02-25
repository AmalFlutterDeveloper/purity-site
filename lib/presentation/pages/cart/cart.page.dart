// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/cart/widget/cart_item.widget.dart';
import 'package:purity/presentation/pages/cart/widget/oredr_details.widget.dart';
import 'package:purity/presentation/widgets/header/header.widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          space32,
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: edgeH24V8,
                      color: white,
                      width: 500,
                      child: const Text(
                        '( 3 \)سلة التسوق ',
                        style: TextStyle(
                          fontFamily: 'Segoe U',
                          fontSize: 18,
                          color: primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    space16,
                    const CartItem(),
                    space16,
                    const CartItem(),
                    space16,
                    const CartItem(),
                    space16,
                  ],
                ),
              ),
              const OrderDetails(),
            ],
          ))
        ],
      ),
    );
  }
}
