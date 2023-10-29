import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_size.dart';
import 'package:payment_integration/Helpers/color_manager.dart';
import 'package:payment_integration/Helpers/styles.dart';

class CustomPaymentButton extends StatelessWidget {
  const CustomPaymentButton({
    super.key, required this.onTap, required this.title,
  });
final Function() onTap;
final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width:double.infinity ,
        height: AppSize.s73,
        decoration: ShapeDecoration(
          color: ColorManager.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s15),
          ),
        ),
        child: Center(
          child: Text(
           title,
            textAlign: TextAlign.center,
            style: Styles.style22,
          ),
        ),
      ),
    );
  }
}
