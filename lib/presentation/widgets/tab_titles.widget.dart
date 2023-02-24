import 'package:flutter/material.dart' hide Tab;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/presentation/pages/home/cubit/tab_cubit.dart';

class TabTitles extends StatefulWidget {
  final TabCubit tabsCubit;

  const TabTitles(
    this.tabsCubit, {
    Key? key,
  }) : super(key: key);

  @override
  State<TabTitles> createState() => _TabTitlesState();
}

class _TabTitlesState extends State<TabTitles> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubit, int>(
      builder: (context, state) => Builder(builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...context.read<TabCubit>().pages.asMap().entries.map(_tabs),
          ],
        );
      }),
    );
  }

  bool isSelected(int i) => widget.tabsCubit.state == i;

  Widget _tabs(MapEntry<int, Tab> e) {
    return GestureDetector(
      onTap: () => widget.tabsCubit.onTap(e.key),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: edgeH16V4,
        margin: edgeH4,
        child: Text(
          e.value.title,
          style: TextStyle(
            color: isSelected(e.key) ? primary : null,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Segoe UI',
          ),
        ),
      ),
    );
  }
}
