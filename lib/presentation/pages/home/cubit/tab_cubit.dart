import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purity/presentation/pages/home/sub_pages/cards.sub.page.dart';
import 'package:purity/presentation/pages/home/sub_pages/food_product.sub.page.dart';

class TabCubit extends Cubit<int> {
  TabCubit() : super(0);

  List<Tab> get pages => [
        Tab(child: const CardsPage(), title: 'الباقات'),
        Tab(child: const FoodProductPage(), title: 'منتجات غذائية'),
        Tab(child: Container(), title: 'منظفات'),
        Tab(child: Container(), title: 'منتجات العناية بالبشرة'),
        Tab(child: Container(), title: 'منتجات الاطفال'),
      ];

  /// this is page controller that will be manage page view
  final controller = PageController();

  void onUpdate(int index) {
    if (state == index) return;
    emit(index);
  }

  void onTap(int index) {
    if (state == index) return;
    emit(index);
    controller.jumpToPage(index);
  }
}

class Tab {
  final Widget child;
  final String title;
  Tab({
    required this.child,
    required this.title,
  });
}
