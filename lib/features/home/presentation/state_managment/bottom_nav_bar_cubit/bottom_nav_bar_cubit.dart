import 'package:anime_senpai/features/home/presentation/screens/home_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarState.initial());

  void activateScreen({required ActiveScreen screenToActive}) {
    emit(
      state.copyWith(
        activeScreen: ActiveScreen(
          activeNavItem: screenToActive.activeNavItem,
          screen: screenToActive.screen,
        ),
      ),
    );
  }
}
