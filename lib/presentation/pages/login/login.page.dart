// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/core/navigations.core.dart';
import 'package:purity/presentation/pages/login/widget/custom_check_box.widget.dart';
import 'package:purity/presentation/widgets/custom_button.widget.dart';
import 'package:purity/presentation/widgets/custom_input_text_field.widget.dart';
import 'package:purity/presentation/widgets/header/header.widget.dart';
import 'package:purity/service/navigation.service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: white,
        child: Column(
          children: [
            Header(),
            space24,
            const Text(
              'تسجيل الدخول الي بيورتي',
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
                    CustomCheckBox(
                      title: 'تذكرني',
                      onChange: (value) {},
                    ),
                    space24,
                    CustomElevatedButton(
                      title: 'تسجيل الدخول',
                      color: primary,
                      onPressed: () {},
                    ),
                    space24,
                    CustomElevatedButton(
                      title: 'ليس لدي حساب',
                      color: grey,
                      onPressed: () => go(R.signUp),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
