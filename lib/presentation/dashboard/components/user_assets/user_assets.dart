import 'package:fintech_app/presentation/dashboard/components/goal_asset_container/bloc/goals_and_assets_bloc.dart';
import 'package:fintech_app/presentation/dashboard/components/grid_view/grid_view.dart';
import 'package:fintech_app/presentation/dashboard/components/linear_view/linear_view.dart';
import 'package:flutter/material.dart';

class UserAssetsSection extends StatelessWidget {
  final DisplayOption displayOption;
  final bool? showMore;
  const UserAssetsSection(
      {super.key, this.displayOption = DisplayOption.grid, this.showMore});

  @override
  Widget build(BuildContext context) {
    print(displayOption);
    switch (displayOption) {
      case DisplayOption.grid:
        return GridViewOptionWidget(
          showMore: showMore,
        );
      case DisplayOption.liner:
        return const LinearViewOptionWidget();
      default:
        return GridViewOptionWidget(
          showMore: showMore,
        );
    }
  }
}
