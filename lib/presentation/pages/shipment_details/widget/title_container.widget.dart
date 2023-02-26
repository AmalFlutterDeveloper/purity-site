import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 150,
          left: 150,
          child: Container(
            alignment: Alignment.center,
            padding: edgeH8V4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: primary,
            ),
            child: const Text(
              'تفاصيل الشحنه',
              style: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'Cairo',
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 24, right: 54, left: 54),
          decoration: BoxDecoration(
            color: primary.withOpacity(0.3),
            borderRadius: BorderRadius.circular(80),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'احنا حاليا بنوصل',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'لمحافظة الجيزة فقط',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/shipment/delvery.png',
                height: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
