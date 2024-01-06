import 'package:flutter/material.dart';
import 'package:payment_integration/Widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
        color: Colors.black,
    ),
        ),
      body: Transform.translate(
        offset:const Offset(0, -16) ,
          child:  const ThankYouViewBody(),),
    );
  }
}
