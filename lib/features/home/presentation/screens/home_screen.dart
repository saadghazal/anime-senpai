import 'package:anime_senpai/features/auth/presentation/screens/login.dart';
import 'package:anime_senpai/theme/app_button.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/animes_grid.dart';
import '../widgets/home_thumbnail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildScreenAppBar(),
        buildScreenContent(),
      ],
    );
  }

  SliverList buildScreenContent() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          buildFreeToWatchText(),
          const SizedBox(
            height: 28,
          ),
          const AnimesGrid()
        ],
      ),
    );
  }

  Padding buildFreeToWatchText() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'Free to watch',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  SliverAppBar buildScreenAppBar() {
    return SliverAppBar(
      expandedHeight: 53.h,
      flexibleSpace: HomeThumbnail(),
      collapsedHeight: 53.h,
      stretch: true,
      actions: [
        buildSearchIcon(),
      ],
    );
  }
}

Align buildSearchIcon() {
  return Align(
    alignment: Alignment.centerRight,
    child: SafeArea(
      bottom: false,
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        iconSize: 24.sp, // 35
        color: Colors.white,
      ),
    ),
  );
}
