part of 'bottom_nav_bar_cubit.dart';

enum ActiveItem {
  Home,
  Bookmark,
  Library,
  Profile,
}

class BottomNavBarState extends Equatable {
  final ActiveScreen activeScreen;

  const BottomNavBarState({required this.activeScreen});

  factory BottomNavBarState.initial() {
    return BottomNavBarState(
      activeScreen: ActiveScreen(
        activeNavItem: ActiveItem.Home,
        screen: HomeScreen(),
      ),
    );
  }

  @override
  List<Object> get props => [activeScreen];

  BottomNavBarState copyWith({
    ActiveScreen? activeScreen,
  }) {
    return BottomNavBarState(
      activeScreen: activeScreen ?? this.activeScreen,
    );
  }
}

class ActiveScreen extends Equatable {
  final ActiveItem activeNavItem;
  final Widget screen;

  const ActiveScreen({
    required this.activeNavItem,
    required this.screen,
  });

  @override
  List<Object> get props => [activeNavItem, screen];
}
