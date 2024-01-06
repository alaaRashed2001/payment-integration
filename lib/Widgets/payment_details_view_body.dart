import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_padding.dart';
import 'package:payment_integration/Helpers/app_string.dart';
import 'package:payment_integration/Helpers/snackbar.dart';
import 'package:payment_integration/Views/thank_you_view.dart';
import 'package:payment_integration/Widgets/payment_methods_list_view.dart';

import 'custom_credit_card.dart';
import 'custom_payment_button.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody>
    with SnackBarHelper {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autoValidateMode: autoValidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: AppPadding.p12,
                left: AppPadding.p16,
                right: AppPadding.p16,
              ),
              child: CustomPaymentButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    // showSnackBar(context,
                    //     message: AppStrings.successfulPayment, error: false);
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThankYouView(),));
                    setState(() {
                      autoValidateMode = AutovalidateMode.always;
                    });
                  }
                },
                title: AppStrings.pay,
              ),
            ),
          ),
        )
      ],
    );
  }
}
