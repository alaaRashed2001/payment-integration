import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/app_padding.dart';
import 'package:payment_integration/Helpers/styles.dart';

mixin SnackBarHelper {
  void showSnackBar(
      BuildContext context, {
        required String message,
        required bool error,
        int duration = 4,
      }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: Styles.style18,
          textAlign: TextAlign.center,
        ),
        backgroundColor:
        error ? const Color(0xffff4d4f) : const Color(0xff52c41a),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: duration),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p12,
          vertical: AppPadding.p8,
        ),
        margin: EdgeInsets.zero,
        elevation: 10,
        dismissDirection: DismissDirection.horizontal,
      ),
    );
  }
}