import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/cart/widget/avatar_counter.widget.dart';

class CounterItem extends StatefulWidget {
  const CounterItem({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterItem> createState() => _CounterItemState();
}

class _CounterItemState extends State<CounterItem> {
  TextEditingController? controller = TextEditingController();
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AvatarCounter(
          icon: Icons.add,
          onPressed: () {
            setState(() {
              value += 1;
              controller?.text = '$value';
            });
          },
        ),
        space16,
        SizedBox(
          height: 30,
          width: 50,
          child: TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                contentPadding: edgeH4,
                labelStyle: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Cairo',
                ),
                floatingLabelAlignment: FloatingLabelAlignment.center,
                hintText: '0',
                hintStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Cairo',
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primary),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              )),
        ),
        space16,
        AvatarCounter(
          icon: Icons.remove,
          onPressed: () {
            setState(() {
              value -= 1;
              controller?.text = '$value';
            });
          },
        ),
      ],
    );
  }
}
