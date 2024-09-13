import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AnimesGrid extends StatelessWidget {
  const AnimesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: buildGridDelegateConfigurations(),
      itemBuilder: (context, index) {
        return buildAnimeGridItem();
      },
      itemCount: 15,
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount buildGridDelegateConfigurations() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      crossAxisSpacing: 23,
      mainAxisSpacing: 20,
      childAspectRatio: 26.21.w / 20.78.h, // 103/177 ,
    );
  }

  Column buildAnimeGridItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: buildAnimeGridItemContent(),
    );
  }

  List<Widget> buildAnimeGridItemContent() {
    return [
      buildAnimeCover(),
      const SizedBox(
        height: 5,
      ),
      buildAnimeName()
    ];
  }

  Flexible buildAnimeName() {
    return const Flexible(
      child: Text(
        'Attack on Titan',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Container buildAnimeCover() {
    return Container(
      height: 17.26.h, // 147
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
