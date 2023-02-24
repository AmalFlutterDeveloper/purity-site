import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';

class Offers extends StatelessWidget {
  const Offers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 70,
            color: primary,
          ),
          Positioned(
            top: 5,
            left: 15,
            right: 2,
            child: Container(
              alignment: Alignment.center,
              width: 300,
              height: 70,
              color: yellow,
              child: const Text(
                'عرض اليوم فقط',
                style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                    color: darkPrimary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
