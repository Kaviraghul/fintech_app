part of 'goals_and_assets_bloc.dart';

sealed class GoalsAndAssetsState extends Equatable {
  const GoalsAndAssetsState();

  @override
  List<Object> get props => [];
}

final class GoalsAndAssetsInitial extends GoalsAndAssetsState {}

class GoalsAndAssetViewOption extends GoalsAndAssetsState {
  final ViewSection viewSection;
  const GoalsAndAssetViewOption({
    required this.viewSection,
  });

  @override
  List<Object> get props => [viewSection];
}

class GoalsAndAssetsDisplayOption extends GoalsAndAssetsState {
  final DisplayOption displayOption;
  const GoalsAndAssetsDisplayOption({
    required this.displayOption,
  });

  @override
  List<Object> get props => [displayOption];
}
