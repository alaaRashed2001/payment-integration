import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_integration/Helpers/app_padding.dart';
import 'package:payment_integration/Helpers/app_size.dart';
import 'package:payment_integration/Helpers/app_string.dart';
import 'package:payment_integration/Helpers/color_manager.dart';
import 'package:payment_integration/Helpers/styles.dart';
import 'package:payment_integration/Widgets/card_info_widget.dart';
import 'package:payment_integration/Widgets/paymentItemInfo.dart';
import 'package:payment_integration/Widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: ColorManager.lightGray,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              AppStrings.thankYou,
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            Text(
              AppStrings.yourTransactionWasSuccessful,
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(
              height: AppSize.s42,
            ),
            const PaymentItemInfo(
              title: AppStrings.date,
              value: '22/3/2023',
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            const PaymentItemInfo(
              title: AppStrings.time,
              value: '10:15 AM',
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            const PaymentItemInfo(
              title: AppStrings.to,
              value: 'Sam Louis',
            ),
            const Divider(
              height: 60,
              thickness: 2,
            ),
            const TotalPrice(
              title: AppStrings.total,
              value: r"$50.97",
            ),
            const SizedBox(
              height: AppPadding.p32,
            ),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  FontAwesomeIcons.barcode,
                  size: 66,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          width: 1.50, color: ColorManager.green),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppStrings.paid,
                      style: Styles.style24.copyWith(color: ColorManager.green),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) -
                  (58 / 2),
            )
          ],
        ),
      ),
    );
  }
}
