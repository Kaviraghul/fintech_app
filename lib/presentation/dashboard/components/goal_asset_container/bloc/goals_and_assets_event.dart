part of 'goals_and_assets_bloc.dart';

sealed class GoalsAndAssetsEvent extends Equatable {
  const GoalsAndAssetsEvent();

  @override
  List<Object> get props => [];
}

enum DisplayOption { grid, liner }

enum ViewSection { assets, goals }

class GoalAndAssetsUserViewEvent extends GoalsAndAssetsEvent {
  final ViewSection viewSection;
  // final DisplayOption displayOption;
  const GoalAndAssetsUserViewEvent({
    required this.viewSection,
    // required this.displayOption,
  });
}
