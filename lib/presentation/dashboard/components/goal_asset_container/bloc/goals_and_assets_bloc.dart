import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'goals_and_assets_event.dart';
part 'goals_and_assets_state.dart';

class GoalsAndAssetsBloc
    extends Bloc<GoalsAndAssetsEvent, GoalsAndAssetsState> {
  GoalsAndAssetsBloc() : super(GoalsAndAssetsInitial()) {
    on<GoalAndAssetsUserViewEvent>((event, emit) {
      emit(GoalsAndAssetViewOption(viewSection: event.viewSection));
    });

    on<GoalAndAssetsDisplayOntionChangedEvent>((event, emit) {
      print(event.displayOption);
      emit(GoalsAndAssetsDisplayOption(displayOption: event.displayOption));
    });
  }
}
