import 'package:fintech_app/presentation/dashboard/components/goal_asset_container/bloc/goals_and_assets_bloc.dart';
import 'package:fintech_app/presentation/dashboard/components/grid_view/grid_view.dart';
import 'package:fintech_app/presentation/dashboard/components/linear_view/linear_view.dart';
import 'package:flutter/material.dart';

class UserAssetsSection extends StatelessWidget {
  final DisplayOption displayOption;
  const UserAssetsSection({super.key, this.displayOption = DisplayOption.grid});

  @override
  Widget build(BuildContext context) {
    switch (displayOption) {
      case DisplayOption.grid:
        return const GridViewOptionWidget();
      case DisplayOption.grid:
        return const LinearViewOptionWidget();
      default:
        return const GridViewOptionWidget();
    }
  }
}
