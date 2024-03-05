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
  const GoalAndAssetsUserViewEvent({
    required this.viewSection,
  });
}

class GoalAndAssetsDisplayOntionChangedEvent extends GoalsAndAssetsEvent {
  final DisplayOption displayOption;
  const GoalAndAssetsDisplayOntionChangedEvent({
    required this.displayOption,
  });
}
