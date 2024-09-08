import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.appButtonStyle,
    required this.whenButtonClicked,
    super.key,
  });
  final AppButtonStyle appButtonStyle;
  final VoidCallback whenButtonClicked;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: whenButtonClicked,
        borderRadius: BorderRadius.circular(appButtonStyle.borderRadius),
        child: Ink(
          height: appButtonStyle.height,
          width: appButtonStyle.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(appButtonStyle.borderRadius),
            color: appButtonStyle.backgroundColor,
          ),
          child: Center(
            child: Text(
              appButtonStyle.text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: appButtonStyle.textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppButtonStyle {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final double height;
  final double width;
  final double borderRadius;

  const AppButtonStyle({
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    required this.height,
    required this.width,
    this.borderRadius = 12,
  });
}
