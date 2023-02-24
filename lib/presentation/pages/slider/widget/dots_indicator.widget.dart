import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,
    required this.items,
    required this.buttonCarouselController,
    required int current,
  }) : _current = current;

  final List<Image> items;
  final CarouselController buttonCarouselController;
  final int _current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.asMap().entries.map(
        (entry) {
          return GestureDetector(
            onTap: () => buttonCarouselController.animateToPage(entry.key),
            child: Container(
              width: 12,
              height: 12,
              margin: edgeH8V4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == entry.key ? yellow : primary,
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
