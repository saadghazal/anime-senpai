import 'package:flutter/cupertino.dart';

class HeightSpace extends StatelessWidget {
  const HeightSpace({
    required this.space,
    super.key,
  });
  final double space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: space,
    );
  }
}
