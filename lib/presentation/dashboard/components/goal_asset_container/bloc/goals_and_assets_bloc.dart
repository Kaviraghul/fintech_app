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

    on<DisplayGridOrListViewEvent>((event, emit) {
      emit(DisplayGridOrListViewOption(displayOption: event.displayOption));
    });

    on<GoalAndAssetsShowMoreItemsEvent>((event, emit) {
      emit(GoalAndAssetsShowMoreItemsOption(showMore: event.showMore));
    });
  }
}
