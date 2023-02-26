// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:purity/core/constant/colors.core.dart';
import 'package:purity/core/constant/padding.core.dart';
import 'package:purity/core/constant/space.core.dart';
import 'package:purity/presentation/pages/shipment_details/widget/input_text_item.widget.dart';
import 'package:purity/presentation/pages/shipment_details/widget/title_container.widget.dart';
import 'package:purity/presentation/widgets/custom_button.widget.dart';
import 'package:purity/presentation/widgets/header/header.widget.dart';

class ShipmentDetailsPage extends StatelessWidget {
  const ShipmentDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Header(),
            const TitleContainer(),
            space16,
            const InputTextItem(
              title: 'المدينة',
              keyboardType: TextInputType.name,
            ),
            const InputTextItem(
              title: 'العنوان',
              icon: Icons.location_on,
            ),
            const InputTextItem(
              title: 'المحافظه',
              icon: Icons.calendar_month,
            ),
            const InputTextItem(
              keyboardType: TextInputType.phone,
              title: 'رقم هاتف بديل  (اختياري )',
            ),
            space24,
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: lightPrimary, padding: edgeH24V8),
                child: const Text(
                  'تاكيد الطلب',
                  style: TextStyle(
                    color: white,
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            space24,
          ],
        ),
      ),
    );
  }
}
