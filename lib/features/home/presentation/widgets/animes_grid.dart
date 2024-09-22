import 'package:anime_senpai/features/anime/presentation/screens/anime_screen.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimesGrid extends StatelessWidget {
  const AnimesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 120,
      ),
      gridDelegate: buildGridDelegate(),
      itemBuilder: buildAnimeGridItem,
      itemCount: 10,
    );
  }

  Widget? buildAnimeGridItem(context, index) {
    return InkWell(
      onTap: () => navigateToAnimeScreen(context),
      borderRadius: BorderRadius.circular(12),
      overlayColor: MaterialStateProperty.resolveWith(
        (states) {
          return AppColors.darkGreen.withOpacity(0.5);
        },
      ),
      child: Ink(
        decoration: buildAnimeCover(),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount buildGridDelegate() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 41.3.w / 235,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
    );
  }

  BoxDecoration buildAnimeCover() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: const DecorationImage(
        image: AssetImage('assets/images/attack.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Future<dynamic> navigateToAnimeScreen(BuildContext context) {
    return Navigator.push(
      context,
      buildAnimeRoute(),
    );
  }

  MaterialPageRoute<dynamic> buildAnimeRoute() {
    return MaterialPageRoute(
      builder: (context) => const AnimeScreen(),
    );
  }
}
