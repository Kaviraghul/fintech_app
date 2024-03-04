import 'package:fintech_app/presentation/home/components/bottom_nav_bar/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            context
                .read<BottomNavBarBloc>()
                .add(BottomNavBarIndexChanged(index));
          },
          currentIndex: state is BottomNavBarIndex ? state.index : 0,
          selectedFontSize: 13,
          unselectedFontSize: 13,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chart_bar_alt_fill,
                size: 30,
              ),
              label: "INDstocks",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.money_dollar,
                  size: 30,
                ),
                label: "US stocks"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.keyboard_double_arrow_up,
                  size: 30,
                ),
                label: "Dashboard"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.credit_card_outlined,
                  size: 30,
                ),
                label: "Credit"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.apps_rounded,
                size: 30,
              ),
              label: "More",
            ),
          ],
        );
      },
    );
  }
}
