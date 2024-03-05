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

class DisplayGridOrListViewEvent extends GoalsAndAssetsEvent {
  final bool displayOption;
  const DisplayGridOrListViewEvent({
    required this.displayOption,
  });
}

class GoalAndAssetsShowMoreItemsEvent extends GoalsAndAssetsEvent {
  final bool showMore;
  const GoalAndAssetsShowMoreItemsEvent({
    required this.showMore,
  });
}
