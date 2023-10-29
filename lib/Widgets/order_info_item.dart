import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
         title,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
         value,
          style: Styles.style18,
        ),
      ],
    );
  }
}
