import 'package:fintech_app/presentation/credit/credit_screen.dart';
import 'package:fintech_app/presentation/dashboard/dashboard.dart';
import 'package:fintech_app/presentation/home/components/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:fintech_app/presentation/home/components/bottom_nav_bar/bottom_nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:fintech_app/presentation/ind_stocks/ind_stocks.dart';
import 'package:fintech_app/presentation/more/more.dart';
import 'package:fintech_app/presentation/resources/app_scafold.dart';
import 'package:fintech_app/presentation/us_stocks/us_stocks_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavBarBloc>(
      create: (BuildContext context) => BottomNavBarBloc(),
      child: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
        builder: (context, state) {
          return AppScaffold(
            bottomNavigationBar: const AppBottomNavBar(),
            child: _getHomeChildComponent(
                state is BottomNavBarIndex ? state.index : 2),
          );
        },
      ),
    );
  }
}

Widget _getHomeChildComponent(int index) {
  switch (index) {
    case 0:
      return const IndStocksScreen();
    case 1:
      return const UsStocksScreen();
    case 2:
      return const DashBoardScreen();
    case 3:
      return const CreditScreen();
    case 4:
      return const MoreSectionScreen();
    default:
      return const DashBoardScreen();
  }
}
