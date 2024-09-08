import 'package:anime_senpai/main.dart';
import 'package:anime_senpai/theme/app_button.dart';
import 'package:anime_senpai/theme/height_space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_colors.dart';
import '../../../../theme/logo_widget.dart';
import '../widgets/auth_method_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildScreenBody(context),
    );
  }

  Container buildScreenBody(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: buildScreenBackground(),
      child: buildScreenContent(context),
    );
  }

  BoxDecoration buildScreenBackground() {
    return const BoxDecoration(
      color: AppColors.deepNavyBlue,
      image: DecorationImage(
        image: AssetImage('assets/images/onboarding_background.png'),
      ),
    );
  }

  Column buildScreenContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LogoWidget(),
        HeightSpace(
          space: 5.85.h, // 50 Height
        ),
        buildAuthButtons(context),
      ],
    );
  }

  Column buildAuthButtons(BuildContext context) {
    return Column(
      children: [
        AuthMethodButton(
          buttonContent: const AuthButtonContent(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            label: 'Sign in with Google',
            iconPath: 'assets/icons/google.png',
          ),
          whenButtonClicked: () {},
        ),
        HeightSpace(
          space: 1.77.h, // 15 Height
        ),
        AuthMethodButton(
          buttonContent: const AuthButtonContent(
            backgroundColor: Color(0xFF1877F2),
            textColor: Colors.white,
            label: 'Sign in with Facebook',
            iconPath: 'assets/icons/facebook.png',
          ),
          whenButtonClicked: () {},
        ),
        HeightSpace(
          space: 1.77.h,
        ),
        AuthMethodButton(
          buttonContent: const AuthButtonContent(
            backgroundColor: Colors.black,
            textColor: Colors.white,
            label: 'Sign in with Apple',
            iconPath: 'assets/icons/apple.png',
          ),
          whenButtonClicked: () {},
        ),
        HeightSpace(
          space: 1.77.h,
        ),
        AppButton(
          appButtonStyle: AppButtonStyle(
            backgroundColor: AppColors.brightRed,
            textColor: Colors.white,
            text: 'Email and Password',
            height: 5.85.h,
            width: MediaQuery.maybeOf(context)!.size.width / 1.4,
          ),
          whenButtonClicked: () {},
        ),
      ],
    );
  }
}
