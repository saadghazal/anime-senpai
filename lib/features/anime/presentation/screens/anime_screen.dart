import 'package:anime_senpai/features/auth/presentation/screens/login.dart';
import 'package:anime_senpai/theme/app_button.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_icon_button.dart';
import '../widgets/episode_widget.dart';

class AnimeScreen extends StatelessWidget {
  const AnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deepGreen,
      appBar: buildAppBar(),
      body: buildScreenBody(),
    );
  }

  SingleChildScrollView buildScreenBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAnimeDetailsAndActionsSection(),
            const SizedBox(
              height: 20,
            ),
            buildEpisodesSection()
          ],
        ),
      ),
    );
  }

  Column buildEpisodesSection() {
    return Column(
      children: [
        buildEpisodesTitle(),
        const Divider(
          color: AppColors.brightGreen,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: buildEpisodes,
          separatorBuilder: buildEpisodesSeparator,
          itemCount: 4,
        ),
      ],
    );
  }

  Column buildAnimeDetailsAndActionsSection() {
    return Column(
      children: [
        buildAnimeTrailerThumbnail(),
        const SizedBox(
          height: 15,
        ),
        buildAnimeDetails(),
        const SizedBox(
          height: 15,
        ),
        buildPlayAndDownloadButtons(),
        const SizedBox(
          height: 15,
        ),
        buildOnAnimeActions(),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      leading: const BackButton(
        color: Colors.white,
      ),
    );
  }

  Widget buildEpisodesSeparator(context, index) => const SizedBox(
        height: 25,
      );

  Widget? buildEpisodes(context, index) {
    return EpisodeWidget(
      episodeTitle: '${index + 1}. Episode${index + 1}',
    );
  }

  Text buildEpisodesTitle() {
    return const Text(
      'Episodes',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    );
  }

  Row buildOnAnimeActions() {
    return Row(
      children: [
        buildOnAnimeActionButton(
          actionIcon: Icons.add,
          actionName: 'Add',
        ),
        const SizedBox(
          width: 10,
        ),
        buildOnAnimeActionButton(
          actionIcon: Icons.favorite_border_outlined,
          actionName: 'Like',
        ),
        const SizedBox(
          width: 10,
        ),
        buildOnAnimeActionButton(
          actionIcon: Icons.share,
          actionName: 'Share',
        ),
      ],
    );
  }

  Column buildOnAnimeActionButton({
    required IconData actionIcon,
    required String actionName,
  }) {
    return Column(
      children: [
        IconButton(
          style: IconButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
          ),
          onPressed: () {},
          icon: Icon(
            actionIcon,
            color: Colors.white,
          ),
          iconSize: 22.sp,
        ),
        buildActionNameText(
          text: actionName,
        )
      ],
    );
  }

  Text buildActionNameText({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }

  Row buildPlayAndDownloadButtons() {
    return Row(
      children: [
        buildPlayButton(),
        const SizedBox(
          width: 20,
        ),
        buildDownloadButton(),
      ],
    );
  }

  Expanded buildDownloadButton() {
    return Expanded(
      child: AppIconButton(
        style: AppIconButtonStyle(
          icon: Icons.download,
          backgroundColor: Colors.indigo,
          textColor: Colors.white,
          text: 'Download',
          height: 5.85.h,
          width: double.maxFinite,
        ),
      ),
    );
  }

  Expanded buildPlayButton() {
    return Expanded(
      child: AppButton(
        appButtonStyle: AppButtonStyle(
          backgroundColor: AppColors.darkGreen,
          textColor: Colors.white,
          text: 'Play',
          height: 5.85.h,
          width: double.maxFinite,
        ),
        whenButtonClicked: () {},
      ),
    );
  }

  Column buildAnimeDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildAnimeTitle(),
        Row(
          children: [
            buildReleasedYear(),
            const SizedBox(
              width: 10,
            ),
            buildAgeRating(),
            const SizedBox(
              width: 10,
            ),
            buildNumberOfSeasons()
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        buildAnimeStoryText(),
      ],
    );
  }

  Text buildNumberOfSeasons() {
    return const Text(
      '6 Seasons',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Text buildAgeRating() {
    return const Text(
      '16+',
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
      ),
    );
  }

  Text buildReleasedYear() {
    return const Text(
      '2013 ',
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
      ),
    );
  }

  Text buildAnimeStoryText() {
    return const Text(
      '''Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called Titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is soon shattered when a colossal Titan manages to breach the supposedly impregnable outer wall, reigniting the fight for survival against the man-eating abominations.
              After witnessing a horrific personal loss at the hands of the invading creatures, Eren Yeager dedicates his life to their eradication by enlisting into the Survey Corps, an elite military unit that combats the merciless humanoids outside the protection of the walls. Eren, his adopted sister Mikasa Ackerman, and his childhood friend Armin Arlert join the brutal war against the Titans and race to discover a way of defeating them before the last walls are breached.
              ''',
      maxLines: 4,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Text buildAnimeTitle() {
    return const Text(
      'Attack on Titan',
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Container buildAnimeTrailerThumbnail() {
    return Container(
      height: 198,
      width: double.maxFinite,
      decoration: buildThumbnailImageAndShadow(),
      child: Center(
        child: buildPlayIcon(),
      ),
    );
  }

  Icon buildPlayIcon() {
    return const Icon(
      Ionicons.play,
      size: 80,
      color: Colors.white,
      shadows: [
        Shadow(
          color: Colors.black87,
          blurRadius: 70,
        ),
      ],
    );
  }

  BoxDecoration buildThumbnailImageAndShadow() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: const DecorationImage(
        image: AssetImage('assets/images/attack_cover.jpg'),
        fit: BoxFit.cover,
      ),
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          blurRadius: 10,
        )
      ],
    );
  }
}
