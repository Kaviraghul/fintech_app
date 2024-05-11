import 'package:fintech_app/presentation/dashboard/components/goal_asset_container/bloc/goals_and_assets_bloc.dart';
import 'package:fintech_app/presentation/dashboard/components/user_assets/user_assets.dart';
import 'package:fintech_app/presentation/dashboard/components/user_goals/user_goals.dart';
import 'package:fintech_app/presentation/resources/app_buttons.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class GoalsAndAssetsContainer extends StatefulWidget {
  const GoalsAndAssetsContainer({super.key});

  @override
  State<GoalsAndAssetsContainer> createState() =>
      _GoalsAndAssetsContainerState();
}

class _GoalsAndAssetsContainerState extends State<GoalsAndAssetsContainer> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoalsAndAssetsBloc(),
      child: Container(
        margin: const EdgeInsets.all(AppValues.s13),
        padding: const EdgeInsets.symmetric(vertical: AppValues.s18),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: BlocBuilder<GoalsAndAssetsBloc, GoalsAndAssetsState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          AppButtons.containerButton(
                            onTap: () {
                              context.read<GoalsAndAssetsBloc>().add(
                                    const GoalAndAssetsUserViewEvent(
                                      viewSection: ViewSection.assets,
                                    ),
                                  );
                            },
                            text: "Assets",
                            active: state is GoalsAndAssetViewOption &&
                                state.viewSection == ViewSection.assets,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppButtons.containerButton(
                            onTap: () {
                              context.read<GoalsAndAssetsBloc>().add(
                                    const GoalAndAssetsUserViewEvent(
                                      viewSection: ViewSection.goals,
                                    ),
                                  );
                            },
                            text: "Goals",
                            active: state is GoalsAndAssetViewOption &&
                                state.viewSection == ViewSection.goals,
                          ),
                        ],
                      ),
                      Switch.adaptive(
                        value: state is DisplayGridOrListViewOption &&
                            state.displayOption ==
                                true, // Set switch value to isGridView
                        onChanged: (bool value) {
                          context.read<GoalsAndAssetsBloc>().add(
                              DisplayGridOrListViewEvent(displayOption: value));
                        },
                      ),
                    ],
                  ),
                  const Divider(
                    color: AppColors.dividerGrey,
                  ),
                  viewSectionWidget(
                      state is GoalsAndAssetViewOption
                          ? state.viewSection
                          : ViewSection.assets,
                      state is DisplayGridOrListViewOption &&
                              state.displayOption == true
                          ? DisplayOption.liner
                          : DisplayOption.grid,
                      state is GoalAndAssetsShowMoreItemsOption &&
                          state.showMore),
                  GestureDetector(
                    onTap: () {
                      print("I am being printed");
                      context.read<GoalsAndAssetsBloc>().add(
                            GoalAndAssetsShowMoreItemsEvent(
                              showMore:
                                  state is GoalAndAssetsShowMoreItemsOption &&
                                          state.showMore
                                      ? false
                                      : true,
                            ),
                          );
                    },
                    child: SizedBox(
                      width: double.infinity,
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state is GoalAndAssetsShowMoreItemsOption &&
                                    state.showMore
                                ? "Show less"
                                : "Show more",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            state is GoalAndAssetsShowMoreItemsOption &&
                                    state.showMore
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget viewSectionWidget(
  ViewSection viewSection,
  DisplayOption displayOption,
  bool showMore,
) {
  switch (viewSection) {
    case ViewSection.assets:
      return UserAssetsSection(
        displayOption: displayOption,
        showMore: showMore,
      );
    case ViewSection.goals:
      return const UserGoalsSection();
    default:
      return UserAssetsSection(
        displayOption: displayOption,
        showMore: showMore,
      );
  }
}
