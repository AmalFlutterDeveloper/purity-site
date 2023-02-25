import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Container(
            padding: edgeH16V4,
            color: white,
            width: 400,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  ' ملخص سلة التسوق',
                  style: TextStyle(
                    fontFamily: 'Segoe U',
                    fontSize: 18,
                    color: darkPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'اجمالي الطلبات',
                      style: TextStyle(
                        fontFamily: 'Segoe U',
                        fontSize: 18,
                        color: darkPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '60 جنيه',
                      style: TextStyle(
                        fontFamily: 'Segoe U',
                        fontSize: 18,
                        color: darkGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                space16,
              ],
            ),
          ),
          Positioned(
            top: 100,
            right: 100,
            left: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
                padding: edge8,
              ),
              onPressed: () {},
              child: const Text(
                'متابعة الي الفاتورة ',
                style: TextStyle(
                  color: white,
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
