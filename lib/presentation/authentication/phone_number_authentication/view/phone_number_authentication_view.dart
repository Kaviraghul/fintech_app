import 'package:fintech_app/presentation/authentication/phone_number_authentication/widgets/enter_otp_widget.dart';
import 'package:fintech_app/presentation/authentication/phone_number_authentication/widgets/enter_phone_number_widget.dart';
import 'package:flutter/material.dart';

class PhoneNumberAuthenticationView extends StatelessWidget {
  const PhoneNumberAuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        EnterPhoneNumberWidget(),
        EnterOtpWidget(),
      ],
    );
  }
}