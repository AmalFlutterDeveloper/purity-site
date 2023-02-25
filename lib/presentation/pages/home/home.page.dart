import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/home/cubit/tab_cubit.dart';

import 'package:purity/presentation/widgets/header/header.widget.dart';
import 'package:purity/presentation/widgets/side_bar.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// this field will be control witch pages is currently shown in page
  /// and it will have the home logic
  late TabCubit tabCubit;

  @override
  void initState() {
    tabCubit = context.read<TabCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          space16,
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                space32,
                SideBar(tabCubit: tabCubit),
                Expanded(
                  child: PageView.builder(
                    controller: tabCubit.controller,
                    itemBuilder: (_, i) => Container(
                      padding: edgeH28,
                      margin: edgeV8,
                      child: tabCubit.pages[i].child,
                    ),
                    itemCount: tabCubit.pages.length,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
