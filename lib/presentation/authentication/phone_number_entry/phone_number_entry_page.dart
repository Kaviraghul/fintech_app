import 'package:fintech_app/presentation/authentication/phone_number_entry/phone_number_entry_cubit/phone_number_entry_cubit.dart';
import 'package:fintech_app/presentation/authentication/phone_number_entry/view/phone_number_entry_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneNumberEntryPage extends StatelessWidget {
  const PhoneNumberEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhoneNumberEntryCubit(),
      child: const PhoneNumberEntryView(),
    );
  }
}
