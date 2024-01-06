import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_padding.dart';
import 'package:payment_integration/Helpers/app_size.dart';
import 'package:payment_integration/Helpers/app_string.dart';
import 'package:payment_integration/Helpers/assets_manager.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p16, horizontal: AppPadding.p22),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            ImageAssets.masterCard,
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: AppSize.s25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.creditCard,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Text(
                "MasterCard**78",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.699999998807907),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
