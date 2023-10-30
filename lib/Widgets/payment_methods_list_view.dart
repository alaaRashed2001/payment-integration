import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_padding.dart';
import 'package:payment_integration/Helpers/app_size.dart';
import 'package:payment_integration/Helpers/assets_manager.dart';
import 'package:payment_integration/Widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentMethodsItems = const [
    ImageAssets.cardImage,
    ImageAssets.paypalImage,
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s73,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItems.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
          child: InkWell(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: PaymentMethodItem(
              image: paymentMethodsItems[index],
              isActive: activeIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
