// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart' hide Tab;
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/home/cubit/tab_cubit.dart';
import 'package:purity/presentation/widgets/tab_titles.widget.dart';

class SideBar extends StatefulWidget {
  final TabCubit tabCubit;
  const SideBar({
    Key? key,
    required this.tabCubit,
  }) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      width: 300,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: edgeH16,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: const Text(
              'الاقسام',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Segoe UI',
                  color: white,
                  fontSize: 24),
            ),
          ),
          space24,
          TabTitles(widget.tabCubit),
          space32,
        ],
      ),
    );
  }
}
