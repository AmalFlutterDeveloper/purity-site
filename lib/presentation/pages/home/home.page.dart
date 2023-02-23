import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/home/widget/dots_indicator.widget.dart';
import 'package:purity/presentation/widgets/header/header.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();

  final items = [
    Image.asset('assets/images/image1.png'),
    Image.asset('assets/images/image2.png'),
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Header(),
        Container(
          color: white,
          padding: edgeH40V6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'باقات تبديل الزيت',
                style: TextStyle(
                  color: primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              space8,
              SizedBox(
                width: double.infinity,
                height: 300,
                child: CarouselSlider(
                  items: items,
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.4,
                    aspectRatio: 0.3,
                    onPageChanged: (index, reason) =>
                        setState(() => _current = index),
                  ),
                ),
              ),
              DotsIndicator(
                items: items,
                buttonCarouselController: buttonCarouselController,
                current: _current,
              ),
            ],
          ),
        ),
        Offers()
      ]),
    );
  }
}

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
