import 'package:anime_senpai/features/auth/presentation/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AuthButtonContent {
  final Color backgroundColor;
  final Color textColor;
  final String label;
  final String iconPath;

  const AuthButtonContent({
    required this.backgroundColor,
    required this.textColor,
    required this.label,
    required this.iconPath,
  });
}

class AuthMethodButton extends StatelessWidget {
  const AuthMethodButton({
    required this.buttonContent,
    required this.whenButtonClicked,
    super.key,
  });
  final AuthButtonContent buttonContent;
  final VoidCallback whenButtonClicked;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: whenButtonClicked,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          height: 5.85.h,
          width: MediaQuery.maybeOf(context)!.size.width / 1.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: buttonContent.backgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                buttonContent.iconPath,
                height: 24,
                width: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                buttonContent.label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: buttonContent.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
