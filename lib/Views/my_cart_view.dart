import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_string.dart';
import 'package:payment_integration/Helpers/styles.dart';
import 'package:payment_integration/Widgets/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          AppStrings.myCart,
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
        centerTitle: true,
      ),
      body: const MyCartViewBody(),
    );
  }
}
