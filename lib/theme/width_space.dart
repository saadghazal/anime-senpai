import 'package:flutter/material.dart';

class WidthSpace extends StatelessWidget {
  const WidthSpace({
    required this.space,
    super.key,
  });
  final double space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: space,
    );
  }
}
