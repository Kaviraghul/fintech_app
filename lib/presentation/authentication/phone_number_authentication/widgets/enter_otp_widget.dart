import 'package:flutter/material.dart';

class EnterOtpWidget extends StatefulWidget {
  const EnterOtpWidget({super.key});

  @override
  State<EnterOtpWidget> createState() => _EnterOtpWidgetState();
}

class _EnterOtpWidgetState extends State<EnterOtpWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("enter otp"),
    );
  }
}