import 'package:flutter/material.dart';
import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/space.core.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    Key? key,
    this.title,
    this.onChange,
    this.initialValue,
  }) : super(key: key);
  final String? title;
  final bool? initialValue;
  final void Function(bool)? onChange;
  @override
  State<CustomCheckBox> createState() => CustomCheckBoxState();
}

class CustomCheckBoxState extends State<CustomCheckBox> {
  late bool isChecked = widget.initialValue ?? false;
  @override
  void reset() {
    isChecked = widget.initialValue ?? false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => isChecked = !isChecked);
        widget.onChange?.call(isChecked);
      },
      child: Row(
        children: [
          AbsorbPointer(
            absorbing: true,
            child: Checkbox(
              activeColor: primary,
              value: isChecked,
              visualDensity: const VisualDensity(
                vertical: VisualDensity.minimumDensity,
                horizontal: VisualDensity.minimumDensity,
              ),
              onChanged: (bool? value) {},
            ),
          ),
          space8,
          if (widget.title != null)
            Text(
              widget.title!,
              style: const TextStyle(
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: primary),
            ),
        ],
      ),
    );
  }
}
