import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/widgets/header/header_title.widget.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff25BF82).withOpacity(0.8),
      ),
      height: 90,
      width: double.infinity,
      child: Row(
        children: [
          const Expanded(child: space150),
          const CircleAvatar(
            radius: 15,
            backgroundColor: white,
            child: Icon(
              Icons.person,
              color: primary,
              size: 24,
            ),
          ),
          space12,
          const HeaderTitle(title: 'تسجيل الدخول'),
          space16,
          GestureDetector(
            onTap: () {},
            child: Row(
              children: const [
                Icon(
                  Icons.shopping_cart,
                  color: white,
                  size: 24,
                ),
                space16,
                HeaderTitle(title: 'سلة التسوق'),
              ],
            ),
          ),
          space32,
          const SizedBox(
              height: 40,
              width: 400,
              child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide(color: primary),
                  ),
                  alignLabelWithHint: true,
                  hintText: 'البحث في بيورتي',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: 'Segoe UI',
                    color: grey,
                  ),
                  filled: true,
                  fillColor: white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
              )),
          space4,
          GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.search,
                color: white,
                size: 34,
              )),
          space24,
          Image.asset(
            'assets/images/purity5.png',
            fit: BoxFit.cover,
            width: 200,
            height: 150,
          ),
          const Expanded(child: space150),
        ],
      ),
    );
  }
}
