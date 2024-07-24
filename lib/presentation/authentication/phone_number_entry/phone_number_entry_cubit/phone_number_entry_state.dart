part of 'phone_number_entry_cubit.dart';

sealed class PhoneNumberEntryState extends Equatable {
  const PhoneNumberEntryState();

  @override
  List<Object> get props => [];
}

final class PhoneNumberEntryInitial extends PhoneNumberEntryState {}
