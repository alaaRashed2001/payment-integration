import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_string.dart';
import 'package:payment_integration/Helpers/styles.dart';
import 'package:payment_integration/Widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          AppStrings.paymentDetails,
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
        centerTitle: true,
      ),
      body: const PaymentDetailsViewBody(),
    );
  }
}
