import 'package:fintech_app/data/dummy_data/user_assets_and_goals.dart';
import 'package:fintech_app/presentation/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ListViewOptionWidget extends StatelessWidget {
  const ListViewOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          tileColor: AppColors.white,
          leading: const Icon(
            Icons.home,
            color: AppColors.iconBlue,
            size: 40,
          ),
          title: Text(assetsGridTitles[index].title),
          subtitle: Text('${assetsGridTitles[index].subtitle.money}'),
          trailing: const Icon(Icons.add_circle_outline_outlined),
        );
      },
      itemCount: assetsGridTitles.length,
    );
  }
}
