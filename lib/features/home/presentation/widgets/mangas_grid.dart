import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class MangasGrid extends StatelessWidget {
  const MangasGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 120,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 41.3.w / 235,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: AssetImage('assets/images/naruto_manga.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}
