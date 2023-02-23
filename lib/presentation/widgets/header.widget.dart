// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/presentation/widgets/header_item.widget.dart';
import 'package:purity/presentation/widgets/top_Header.widget.dart';

class HeaderContent {
  final String title;
  final String icon;
  HeaderContent({
    required this.title,
    required this.icon,
  });
}

class Header extends StatelessWidget {
  Header({super.key});
  final items = <HeaderContent>[
    HeaderContent(
      title: 'الرئيسية',
      icon: 'assets/images/icons/home.svg',
    ),
    HeaderContent(
      title: 'الباقات',
      icon: 'assets/images/icons/cards.svg',
    ),
    HeaderContent(
      title: 'العروض',
      icon: 'assets/images/icons/gift.svg',
    ),
    HeaderContent(
      title: 'النقاط',
      icon: 'assets/images/icons/coins.svg',
    ),
    HeaderContent(
      title: 'طلباتي',
      icon: 'assets/images/icons/orders.svg',
    ),
    HeaderContent(
      title: 'طلب تبديل زيت',
      icon: 'assets/images/icons/add.svg',
    ),
    HeaderContent(
      title: 'تواصل معنا',
      icon: 'assets/images/icons/connect.svg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/background.png',
                fit: BoxFit.fill,
              ),
              Column(
                children: [
                  const TopHeader(),
                  Container(
                    color: darkGrey,
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        ...items.map(
                          (e) => Padding(
                            padding: edgeV16,
                            child: HeaderItem(
                              title: e.title,
                              icon: e.icon,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
