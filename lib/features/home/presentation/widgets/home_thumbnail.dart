import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_button.dart';
import '../../../../theme/app_colors.dart';

class HomeThumbnail extends StatelessWidget {
  const HomeThumbnail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: buildThumbnailAnimeCover(),
      child: buildThumbnailContent(),
    );
  }

  Column buildThumbnailContent() {
    return Column(
      children: [
        buildSearchIcon(),
        const Spacer(),
        buildGenresOfThumbnailAnime(),
        buildThumbnailActionsFooter(),
      ],
    );
  }

  Container buildThumbnailActionsFooter() {
    return Container(
      height: 14.2.h, // 121
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: buildFooterDecoration(),
      child: buildActions(),
    );
  }

  Row buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildActionItem(title: 'My List', icon: Icons.add),
        buildPlayAction(),
        buildActionItem(title: 'Info', icon: Icons.info_outline_rounded),
      ],
    );
  }

  AppButton buildPlayAction() {
    return AppButton(
      appButtonStyle: AppButtonStyle(
        backgroundColor: AppColors.brightRed,
        textColor: Colors.white,
        text: 'Play',
        height: 5.85.h,
        width: 30.6.w,
      ),
      whenButtonClicked: () {},
    );
  }

  Column buildActionItem({required String title, required IconData icon}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 24.sp,
          color: Colors.white,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        )
      ],
    );
  }

  BoxDecoration buildFooterDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppColors.deepNavyBlue,
          Colors.transparent,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
    );
  }

  Padding buildGenresOfThumbnailAnime() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: buildGenres(),
    );
  }

  Row buildGenres() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildAnimeGenre(genre: 'Action'),
        buildAnimeGenre(genre: 'Drama'),
        buildAnimeGenre(genre: 'Adventure'),
        buildAnimeGenre(genre: 'Thriller'),
      ],
    );
  }

  Text buildAnimeGenre({required String genre}) {
    return Text(
      genre,
      style: const TextStyle(
        fontSize: 15,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Align buildSearchIcon() {
    return Align(
      alignment: Alignment.centerRight,
      child: SafeArea(
        bottom: false,
        child: Icon(
          Icons.search,
          size: 26.4.sp, // 35
          color: Colors.white,
        ),
      ),
    );
  }

  BoxDecoration buildThumbnailAnimeCover() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/attack.jpg'),
        fit: BoxFit.cover,
        opacity: 0.85,
      ),
    );
  }
}
