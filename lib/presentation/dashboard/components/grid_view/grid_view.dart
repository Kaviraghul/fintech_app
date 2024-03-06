import 'package:fintech_app/data/dummy_data/user_assets_and_goals.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';

class GridViewOptionWidget extends StatelessWidget {
  final bool? showMore;
  const GridViewOptionWidget({super.key, this.showMore = false});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: showMore! ? assetsGridTitles.length : 6,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shadowColor: AppColors.transparent,
          color: AppColors.white,
          surfaceTintColor: AppColors.transparent,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.home,
                  color: AppColors.iconBlue,
                  size: 40,
                ),
                Text(assetsGridTitles[index].title),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.add_circle_outline_outlined)],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
