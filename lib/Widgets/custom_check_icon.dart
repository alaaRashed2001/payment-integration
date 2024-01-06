import 'package:flutter/material.dart';
import 'package:payment_integration/Helpers/color_manager.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: ColorManager.lightGray,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: ColorManager.green,
        child: Icon(
          Icons.check,
          size: 50,
        ),
      ),
    );
  }
}

