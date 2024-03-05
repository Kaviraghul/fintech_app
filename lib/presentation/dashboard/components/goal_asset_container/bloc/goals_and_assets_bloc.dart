import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'goals_and_assets_event.dart';
part 'goals_and_assets_state.dart';

class GoalsAndAssetsBloc
    extends Bloc<GoalsAndAssetsEvent, GoalsAndAssetsState> {
  GoalsAndAssetsBloc() : super(GoalsAndAssetsInitial()) {
    on<GoalAndAssetsUserViewEvent>((event, emit) {
      emit(GoalsAndAssetsDisplayOption(viewSection: event.viewSection));
    });
  }
}
