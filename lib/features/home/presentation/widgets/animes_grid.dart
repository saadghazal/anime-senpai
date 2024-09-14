import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimesList extends StatelessWidget {
  const AnimesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 17.26.h,
      width: double.maxFinite,
      child: buildAnimesList(),
    );
  }

  ListView buildAnimesList() {
    return ListView.separated(
      // shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return buildAnimeCover();
      },
      separatorBuilder: buildItemsSeparator,
      itemCount: 8,
    );
  }

  Widget buildItemsSeparator(context, index) => SizedBox(
        width: 8,
      );

  Container buildAnimeCover() {
    return Container(
      height: 17.26.h, // 147
      width: 103,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/attack.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
