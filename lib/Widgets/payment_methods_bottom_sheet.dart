import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_string.dart';
import 'package:payment_integration/Widgets/custom_payment_button.dart';
import 'package:payment_integration/Widgets/payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16,),
          const PaymentMethodsListView(),
          const SizedBox(height: 32,),
          CustomPaymentButton(
              onTap: (){},
              title: AppStrings.contnue
          )
        ],
      ),
    );
  }
}
