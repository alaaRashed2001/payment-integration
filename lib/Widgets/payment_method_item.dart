import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_size.dart';
import 'package:payment_integration/Helpers/color_manager.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isActive = false,
    required this.image,
  });
  final bool isActive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      child: Container(
        width: 103,
        height: AppSize.s73,
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.5,
                  color: isActive ? ColorManager.green : ColorManager.navyBlue),
              borderRadius: BorderRadius.circular(AppSize.s15),
            ),
            shadows: [
              BoxShadow(
                color: isActive ? ColorManager.green : ColorManager.navyBlue,
                blurRadius: 4,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              ),
            ]),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSize.s15),
            color: Colors.white,
          ),
          child: Center(
              child: Image.asset(
            image,
            height: AppSize.s55,
            fit: BoxFit.scaleDown,
          )),
        ),
      ),
    );
  }
}
