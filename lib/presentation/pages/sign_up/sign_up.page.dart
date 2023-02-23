import 'package:flutter/material.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/widgets/custom_button.widget.dart';
import 'package:purity/presentation/widgets/custom_input_text_field.widget.dart';
import 'package:purity/presentation/widgets/header/header.widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          space24,
          const Text(
            'تسجيلك مش هياخد وقت',
            style: TextStyle(
              fontFamily: 'AArslanWessamA-AArslanWessamA',
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          space24,
          SizedBox(
            width: 300,
            child: Form(
              child: Column(
                children: [
                  const CustomInputTextField(
                    autofocus: true,
                    title: 'الإســـــم',
                    keyboardType: TextInputType.name,
                  ),
                  space16,
                  const CustomInputTextField(
                    title: 'رقم الهاتف',
                    keyboardType: TextInputType.number,
                  ),
                  space16,
                  const CustomInputTextField(
                    obscureText: true,
                    title: 'الرقم السري',
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  space16,
                  const CustomInputTextField(
                    obscureText: true,
                    title: 'تأكيد الرقم السري',
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  space24,
                  CustomButton(
                    padding: edgeH40V12,
                    title: 'التالي',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
