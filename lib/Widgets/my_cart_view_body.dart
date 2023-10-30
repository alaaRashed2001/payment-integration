import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_padding.dart';
import 'package:payment_integration/Helpers/app_size.dart';
import 'package:payment_integration/Helpers/app_string.dart';
import 'package:payment_integration/Helpers/color_manager.dart';
import 'package:payment_integration/Helpers/assets_manager.dart';
import 'package:payment_integration/Views/payment_details_view.dart';
import 'package:payment_integration/Widgets/order_info_item.dart';
import 'package:payment_integration/Widgets/total_price.dart';
import 'custom_payment_button.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s18,
          ),
          Expanded(child: Image.asset(ImageAssets.productImage)),
          const SizedBox(
            height: AppSize.s25,
          ),
          const OrderInfoItem(
            title: AppStrings.orderSubtotal,
            value: r"22.97$",
          ),
          const SizedBox(
            height: AppSize.s3,
          ),
          const OrderInfoItem(
            title: AppStrings.discount,
            value: r"0.00$",
          ),
          const SizedBox(
            height: AppSize.s3,
          ),
          const OrderInfoItem(
            title: AppStrings.shipping,
            value: r"8$",
          ),
          const Divider(
            thickness: 3.6,
            color: ColorManager.grey,
            height: AppSize.s34,
          ),
          const TotalPrice(
            title: AppStrings.total,
            value: r"50.25$",
          ),
          const SizedBox(
            height: AppSize.s15,
          ),
          CustomPaymentButton(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const PaymentDetailsView(),
              ));
            },
            title: AppStrings.completePayment,
          ),
          const SizedBox(
            height: AppSize.s15,
          ),
        ],
      ),
    );
  }
}
