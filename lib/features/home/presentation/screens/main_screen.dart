import 'package:anime_senpai/features/auth/presentation/screens/login.dart';
import 'package:anime_senpai/features/home/presentation/screens/bookmarks_screen.dart';
import 'package:anime_senpai/features/home/presentation/screens/home_screen.dart';
import 'package:anime_senpai/features/home/presentation/screens/library_screen.dart';
import 'package:anime_senpai/features/home/presentation/state_managment/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

import '../widgets/main_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepGreen,
      body: buildScreenBody(),
    );
  }

  Widget buildScreenBody() {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return Stack(
          children: [
            state.activeScreen.screen,
            MainBottomNavBar(),
          ],
        );
      },
    );
  }
}
