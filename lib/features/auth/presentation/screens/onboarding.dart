import 'package:anime_senpai/features/auth/presentation/screens/login.dart';
import 'package:anime_senpai/main.dart';
import 'package:anime_senpai/theme/app_button.dart';
import 'package:anime_senpai/theme/height_space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_colors.dart';
import '../../../../theme/logo_widget.dart';
import '../widgets/auth_method_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
      color: AppColors.deepGreen,
      image: DecorationImage(
        image: AssetImage('assets/images/onboarding_background.png'),
        fit: BoxFit.cover,
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
      children: getAuthButtons(context),
    );
  }

  List<Widget> getAuthButtons(BuildContext context) {
    return [
      buildGoogleAuthButton(),
      HeightSpace(
        space: 1.77.h, // 15 Height
      ),
      buildFacebookAuthButton(),
      HeightSpace(
        space: 1.77.h,
      ),
      buildAppleAuthButton(),
      HeightSpace(
        space: 1.77.h,
      ),
      buildEmailAndPasswordAuthButton(context),
    ];
  }

  AppButton buildEmailAndPasswordAuthButton(BuildContext context) {
    return AppButton(
      appButtonStyle: AppButtonStyle(
        backgroundColor: AppColors.brightGreen,
        textColor: Colors.white,
        text: 'Email and Password',
        height: 5.85.h,
        width: MediaQuery.maybeOf(context)!.size.width / 1.4,
      ),
      whenButtonClicked: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
    );
  }

  AuthMethodButton buildAppleAuthButton() {
    return AuthMethodButton(
      buttonContent: const AuthButtonContent(
        backgroundColor: Colors.black,
        textColor: Colors.white,
        label: 'Sign in with Apple',
        iconPath: 'assets/icons/apple.png',
      ),
      whenButtonClicked: () {},
    );
  }

  AuthMethodButton buildFacebookAuthButton() {
    return AuthMethodButton(
      buttonContent: const AuthButtonContent(
        backgroundColor: Color(0xFF1877F2),
        textColor: Colors.white,
        label: 'Sign in with Facebook',
        iconPath: 'assets/icons/facebook.png',
      ),
      whenButtonClicked: () {},
    );
  }

  AuthMethodButton buildGoogleAuthButton() {
    return AuthMethodButton(
      buttonContent: const AuthButtonContent(
        backgroundColor: Colors.white,
        textColor: Colors.black,
        label: 'Sign in with Google',
        iconPath: 'assets/icons/google.png',
      ),
      whenButtonClicked: () {},
    );
  }
}
