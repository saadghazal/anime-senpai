import 'package:anime_senpai/theme/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.style,
    super.key,
  });

  final AppIconButtonStyle style;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          height: style.height,
          width: style.width,
          decoration: BoxDecoration(
            color: style.backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                style.text,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                style.icon,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppIconButtonStyle extends AppButtonStyle {
  final IconData icon;

  const AppIconButtonStyle({
    required this.icon,
    required super.backgroundColor,
    required super.textColor,
    required super.text,
    required super.height,
    required super.width,
  });
}
