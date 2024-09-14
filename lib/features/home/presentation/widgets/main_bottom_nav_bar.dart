import 'package:anime_senpai/features/home/presentation/screens/bookmarks_screen.dart';
import 'package:anime_senpai/features/home/presentation/screens/home_screen.dart';
import 'package:anime_senpai/features/home/presentation/screens/library_screen.dart';
import 'package:anime_senpai/features/home/presentation/screens/profile_screen.dart';
import 'package:anime_senpai/features/home/presentation/state_managment/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_colors.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 7.1.h, // 60
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 25),
        decoration: buildNavBarDecoration(),
        child: buildNavItems(context),
      ),
    );
  }

  Widget buildNavItems(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildHomeNavItem(state, context),
            buildBookmarkNavItem(state, context),
            buildLibraryNavItem(state, context),
            buildProfileNavItem(state, context)
          ],
        );
      },
    );
  }

  IconButton buildProfileNavItem(BottomNavBarState state, BuildContext context) {
    return isProfileActive(state)
        ? buildActiveNavItem(icon: Ionicons.person)
        : buildInactiveNavItem(
            icon: Ionicons.person,
            activateScreen: () => activateProfile(context),
          );
  }

  void activateProfile(BuildContext context) {
    return context.read<BottomNavBarCubit>().activateScreen(
          screenToActive: const ActiveScreen(
            activeNavItem: ActiveItem.Profile,
            screen: ProfileScreen(),
          ),
        );
  }

  bool isProfileActive(BottomNavBarState state) =>
      state.activeScreen.activeNavItem == ActiveItem.Profile;

  IconButton buildLibraryNavItem(BottomNavBarState state, BuildContext context) {
    return isLibraryActive(state)
        ? buildActiveNavItem(icon: Ionicons.library)
        : buildInactiveNavItem(
            icon: Ionicons.library,
            activateScreen: () => activateLibrary(context),
          );
  }

  void activateLibrary(BuildContext context) {
    return context.read<BottomNavBarCubit>().activateScreen(
          screenToActive: const ActiveScreen(
            activeNavItem: ActiveItem.Library,
            screen: LibraryScreen(),
          ),
        );
  }

  bool isLibraryActive(BottomNavBarState state) =>
      state.activeScreen.activeNavItem == ActiveItem.Library;

  IconButton buildBookmarkNavItem(BottomNavBarState state, BuildContext context) {
    return isBookmarksActive(state)
        ? buildActiveNavItem(icon: Ionicons.bookmark)
        : buildInactiveNavItem(
            icon: Ionicons.bookmark,
            activateScreen: () => activateBookmarks(context),
          );
  }

  void activateBookmarks(BuildContext context) {
    return context.read<BottomNavBarCubit>().activateScreen(
          screenToActive: const ActiveScreen(
            activeNavItem: ActiveItem.Bookmark,
            screen: BookmarksScreen(),
          ),
        );
  }

  bool isBookmarksActive(BottomNavBarState state) =>
      state.activeScreen.activeNavItem == ActiveItem.Bookmark;

  IconButton buildHomeNavItem(BottomNavBarState state, BuildContext context) {
    return isHomeActivated(state)
        ? buildActiveNavItem(icon: Ionicons.home)
        : buildInactiveNavItem(
            icon: Ionicons.home,
            activateScreen: () => activateHome(context),
          );
  }

  void activateHome(BuildContext context) {
    return context.read<BottomNavBarCubit>().activateScreen(
          screenToActive: const ActiveScreen(
            activeNavItem: ActiveItem.Home,
            screen: HomeScreen(),
          ),
        );
  }

  bool isHomeActivated(BottomNavBarState state) =>
      state.activeScreen.activeNavItem == ActiveItem.Home;

  IconButton buildActiveNavItem({
    required IoniconsData icon,
  }) {
    return IconButton(
      icon: Icon(
        icon,
        size: 21.5.sp,
      ),
      onPressed: () {},
      color: AppColors.brightGreen,
    );
  }

  IconButton buildInactiveNavItem({
    required IoniconsData icon,
    required VoidCallback activateScreen,
  }) {
    return IconButton(
      icon: Icon(
        icon,
        size: 20.sp,
      ),
      onPressed: activateScreen,
      color: Colors.white,
    );
  }

  BoxDecoration buildNavBarDecoration() {
    return BoxDecoration(
      border: Border.all(color: AppColors.brightGreen),
      borderRadius: BorderRadius.circular(25),
      color: Color(0xFF081C15),
      boxShadow: buildDecorationShadows(),
    );
  }

  List<BoxShadow> buildDecorationShadows() {
    return [
      BoxShadow(
        color: AppColors.brightGreen.withOpacity(0.4),
        blurRadius: 15,
        offset: const Offset(0, 3),
      ),
    ];
  }
}
