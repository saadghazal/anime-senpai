import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_colors.dart';

class EpisodeWidget extends StatelessWidget {
  const EpisodeWidget({
    required this.episodeTitle,
    super.key,
  });
  final String episodeTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildEpisodeDetails(),
        const SizedBox(
          height: 5,
        ),
        buildEpisodeDescription()
      ],
    );
  }

  Row buildEpisodeDetails() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildEpisodeImage(),
        const SizedBox(
          width: 10,
        ),
        buildEpisodeTitleAndPeriod(epTitle: episodeTitle),
        const Spacer(),
        buildDownloadEpisodeIcon(),
      ],
    );
  }

  Text buildEpisodeDescription() {
    return const Text(
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla rhoncus egestas massa. Duis lobortis elementum augue eget porta. Maecenas nec sapien maximus, pellentesque lacus id, pharetra nisl. Nullam elementum risus faucibus massa placerat tristique. Suspendisse mattis volutpat dolor ac porta. Proin sed iaculis lectus, id posuere ex. Proin nec malesuada turpis. In id eros ac justo sollicitudin fermentum ut ac sem. Sed at nibh augue. Suspendisse quis ante quis urna molestie aliquet nec ac velit. Nunc eu semper velit. Sed et ante ut mi efficitur consectetur. Fusce sed feugiat erat, nec blandit elit. Phasellus eget dictum lacus, sit amet tristique orci. Nam ac lacus nunc. Donec fringilla, ipsum vel cursus pellentesque, sapien ante lacinia erat, ac consectetur quam ante in sapien.
  ''',
      maxLines: 2,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  Icon buildDownloadEpisodeIcon() {
    return const Icon(
      Icons.download,
      color: Colors.white,
    );
  }

  Column buildEpisodeTitleAndPeriod({required String epTitle}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildEpisodeTitleText(epTitle),
        const SizedBox(
          height: 5,
        ),
        buildEpisodePeriodText(),
      ],
    );
  }

  Text buildEpisodePeriodText() {
    return const Text(
      '24 min',
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
      ),
    );
  }

  Text buildEpisodeTitleText(String epTitle) {
    return Text(
      epTitle,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Container buildEpisodeImage() {
    return Container(
      height: 89,
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.brightGreen,
      ),
    );
  }
}
