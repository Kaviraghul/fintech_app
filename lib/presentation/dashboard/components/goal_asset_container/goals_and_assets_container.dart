import 'package:fintech_app/gen/assets.gen.dart';
import 'package:fintech_app/presentation/commonWidgets/app_button.dart';
import 'package:fintech_app/presentation/dashboard/components/goal_asset_container/bloc/goals_and_assets_bloc.dart';
import 'package:fintech_app/presentation/dashboard/components/user_assets/user_assets.dart';
import 'package:fintech_app/presentation/dashboard/components/user_goals/user_goals.dart';
import 'package:fintech_app/presentation/resources/app_buttons.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:fintech_app/presentation/resources/app_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                          AppButtons.getTextButton(
                              onTap: () {
                                context.read<GoalsAndAssetsBloc>().add(
                                      const GoalAndAssetsUserViewEvent(
                                        viewSection: ViewSection.assets,
                                      ),
                                    );
                              },
                              text: "Assets",
                              active: false),
                          const SizedBox(
                            width: 10,
                          ),
                          AppButtons.getTextButton(
                              onTap: () {
                                context.read<GoalsAndAssetsBloc>().add(
                                      const GoalAndAssetsUserViewEvent(
                                        viewSection: ViewSection.goals,
                                      ),
                                    );
                              },
                              text: "Goals",
                              active: false),
                        ],
                      ),
                      Switch.adaptive(
                        value: false,
                        thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return const Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: AppValues.s18,
                            );
                          } else {
                            return const Icon(
                              Icons.access_alarm,
                              color: Colors.white,
                              size: AppValues.s18,
                            );
                          }
                        }),
                        onChanged: (bool value) {
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const Divider(
                    color: AppColors.dividerGrey,
                  ),
                  viewSectionWidget(
                    state is GoalsAndAssetsDisplayOption
                        ? state.viewSection
                        : ViewSection.assets,
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

Widget viewSectionWidget(ViewSection viewSection) {
  switch (viewSection) {
    case ViewSection.assets:
      return const UserAssetsSection();
    case ViewSection.goals:
      return const UserGoalsSection();
    default:
      return const UserAssetsSection();
  }
}
