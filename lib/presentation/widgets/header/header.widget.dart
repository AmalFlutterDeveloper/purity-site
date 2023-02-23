// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/widgets/header/header_item.widget.dart';
import 'package:purity/presentation/widgets/header/top_Header.widget.dart';

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
    return Container(
      color: white,
      height: 200,
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
                    height: 60,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Expanded(child: space100),
                        ...items.map(
                          (e) => Padding(
                            padding: edgeH16V4,
                            child: HeaderItem(
                              title: e.title,
                              icon: e.icon,
                            ),
                          ),
                        ),
                        const Expanded(child: space100),
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
