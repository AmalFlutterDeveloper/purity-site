import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';

class AddToCardButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const AddToCardButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: edgeH28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: lightPrimary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              'إضافة للسلة',
              style: TextStyle(
                fontFamily: 'Cairo',
                fontSize: 18,
                color: white,
              ),
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: white,
            )
          ],
        ),
      ),
    );
  }
}
