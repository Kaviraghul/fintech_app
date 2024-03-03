import 'package:fintech_app/presentation/commonWidgets/app_button.dart';
import 'package:fintech_app/presentation/resources/go_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
  });

  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TabPageSelector(
            controller: tabController,
            color: colorScheme.background,
            selectedColor: Colors.black,
          ),
          AppButton(
            onPressCallback: () {
              if (currentPageIndex == 2) {
                context.go(Routes.signInScreen);
                return;
              }

              onUpdateCurrentPageIndex(currentPageIndex + 1);
            },
            text: "Next",
          )
        ],
      ),
    );
  }
}
