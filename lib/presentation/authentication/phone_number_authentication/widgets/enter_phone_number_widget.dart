import 'package:fintech_app/presentation/resources/app_scafold.dart';
import 'package:flutter/material.dart';

class EnterPhoneNumberWidget extends StatefulWidget {
  const EnterPhoneNumberWidget({super.key});

  @override
  State<EnterPhoneNumberWidget> createState() => _EnterPhoneNumberWidgetState();
}

class _EnterPhoneNumberWidgetState extends State<EnterPhoneNumberWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("enter phone number"),
    );
  }
}