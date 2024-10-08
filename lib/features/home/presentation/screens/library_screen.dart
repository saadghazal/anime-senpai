import 'package:anime_senpai/features/home/presentation/widgets/animes_grid.dart';
import 'package:anime_senpai/features/home/presentation/widgets/mangas_grid.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> with TickerProviderStateMixin {
  late TabController tabViewController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabViewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return buildScreenContent();
  }

  SafeArea buildScreenContent() {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          buildBrowseAppBar(),
          SizedBox(
            height: 1.77.h, // 15
          ),
          buildBrowseTabBar(),
          buildTabBarView()
        ],
      ),
    );
  }

  Expanded buildTabBarView() {
    return Expanded(
      child: TabBarView(
        controller: tabViewController,
        children: buildViews(),
      ),
    );
  }

  List<Widget> buildViews() {
    return [
      buildAnimesView(),
      buildMangasView(),
    ];
  }

  MangasGrid buildMangasView() => const MangasGrid();

  AnimesGrid buildAnimesView() => const AnimesGrid();

  TabBar buildBrowseTabBar() {
    return TabBar(
      controller: tabViewController,
      dividerColor: Colors.transparent,
      labelColor: AppColors.brightGreen,
      automaticIndicatorColorAdjustment: false,
      overlayColor: buildWhenTabTappedEffectColor(),
      labelStyle: buildSelectedLabelStyle(),
      unselectedLabelColor: Colors.white,
      unselectedLabelStyle: buildUnselectedLabelStyle(),
      indicator: buildIndicatorDecoration(),
      tabs: buildTabs(),
    );
  }

  List<Widget> buildTabs() {
    return const [
      Tab(
        text: 'Anime',
      ),
      Tab(
        text: 'Manga',
      ),
    ];
  }

  UnderlineTabIndicator buildIndicatorDecoration() {
    return UnderlineTabIndicator(
      borderRadius: BorderRadius.circular(5),
      borderSide: const BorderSide(
        color: AppColors.brightGreen,
        width: 2.5,
      ),
    );
  }

  TextStyle buildUnselectedLabelStyle() {
    return const TextStyle(
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle buildSelectedLabelStyle() {
    return const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
    );
  }

  WidgetStateProperty<Color?> buildWhenTabTappedEffectColor() {
    return MaterialStateProperty.resolveWith(
      (state) {
        return getTappingEffectColor(state);
      },
    );
  }

  Color? getTappingEffectColor(Set<WidgetState> state) {
    return state.contains(MaterialState.focused) ? null : AppColors.brightGreen.withOpacity(0.3);
  }

  Padding buildBrowseAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildBrowseText(),
          buildSearchButton(),
        ],
      ),
    );
  }

  IconButton buildSearchButton() {
    return IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      icon: buildSearchIcon(),
      color: CupertinoColors.white,
    );
  }

  Icon buildSearchIcon() {
    return Icon(
      Ionicons.search,
      size: 20.sp,
    );
  }

  Text buildBrowseText() {
    return const Text(
      'Browse',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: CupertinoColors.white,
      ),
    );
  }
}
