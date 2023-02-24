import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/slider/widget/dots_indicator.widget.dart';
import 'package:purity/presentation/pages/slider/widget/offers.widget.dart';
import 'package:purity/presentation/widgets/header/header.widget.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
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
        const Offers()
      ]),
    );
  }
}
