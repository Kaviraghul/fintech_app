import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'phone_number_entry_state.dart';

class PhoneNumberEntryCubit extends Cubit<PhoneNumberEntryState> {
  PhoneNumberEntryCubit() : super(PhoneNumberEntryInitial());
}
