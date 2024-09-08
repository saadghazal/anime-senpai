import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.placeholder,
    super.key,
  });
  final String placeholder;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.brightRed,
      decoration: InputDecoration(
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.grey, width: 0.5),
    );
  }
}
