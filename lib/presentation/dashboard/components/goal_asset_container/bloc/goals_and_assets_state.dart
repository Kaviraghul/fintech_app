part of 'goals_and_assets_bloc.dart';

sealed class GoalsAndAssetsState extends Equatable {
  const GoalsAndAssetsState();

  @override
  List<Object> get props => [];
}

final class GoalsAndAssetsInitial extends GoalsAndAssetsState {}

class GoalsAndAssetsDisplayOption extends GoalsAndAssetsState {
  // final DisplayOption displayOption;
  final ViewSection viewSection;
  const GoalsAndAssetsDisplayOption({
    // required this.displayOption,
    required this.viewSection,
  });

  @override
  List<Object> get props => [viewSection];
}
