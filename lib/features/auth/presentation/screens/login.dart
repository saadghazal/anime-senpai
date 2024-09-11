import 'package:anime_senpai/features/auth/presentation/screens/onboarding.dart';
import 'package:anime_senpai/features/auth/presentation/screens/sign_up.dart';
import 'package:anime_senpai/theme/app_button.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:anime_senpai/theme/height_space.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_password_field.dart';
import '../../../../theme/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildScreenBody(context),
    );
  }

  SafeArea buildScreenBody(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: buildScreenBodyElements(context),
        ),
      ),
    );
  }

  List<Widget> buildScreenBodyElements(BuildContext context) {
    return [
      buildBackButtonAndTitle(),
      SizedBox(
        height: (2 * 2.35).h, // 40
      ),
      buildLoginFieldsAndForgetPassword(),
      SizedBox(
        height: 2.35.h, // 20
      ),
      buildLoginButton(),
      SizedBox(
        height: 2.35.h,
      ),
      buildHasNoAccount(context),
    ];
  }

  Column buildBackButtonAndTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackButton(),
        HeightSpace(
          space: 5.85.h, // 65
        ),
        const Center(
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Padding buildLoginFieldsAndForgetPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildEmailAndPasswordFields(),
          SizedBox(
            height: (1.1 * 2).h, // 5
          ),
          buildForgetPassword(),
        ],
      ),
    );
  }

  Column buildEmailAndPasswordFields() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildEmailField(),
        SizedBox(
          height: 1.77.h, // 15
        ),
        buildPasswordField(),
      ],
    );
  }

  Column buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 13.5,
          ),
        ),
        SizedBox(
          height: 1.1.h, // 5
        ),
        const AppPasswordField(
          placeholder: 'Enter your password',
        ),
      ],
    );
  }

  Column buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 13.5,
          ),
        ),
        SizedBox(
          height: 1.1.h, // 5
        ),
        const AppTextField(
          placeholder: 'Enter your email',
        ),
      ],
    );
  }

  Align buildForgetPassword() {
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(
        'Forget Password?',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.brightRed,
        ),
      ),
    );
  }

  Padding buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppButton(
        appButtonStyle: AppButtonStyle(
          backgroundColor: AppColors.brightRed,
          textColor: Colors.white,
          text: 'Login',
          height: 5.85.h,
          width: double.maxFinite,
        ),
        whenButtonClicked: () {},
      ),
    );
  }

  Center buildHasNoAccount(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontFamily: 'Raleway',
            color: Colors.black,
          ),
          children: buildHasNoAccountTexts(context),
        ),
      ),
    );
  }

  List<InlineSpan> buildHasNoAccountTexts(BuildContext context) {
    return [
      const TextSpan(
        text: 'Don\'t have an account?',
      ),
      TextSpan(
        text: ' Sign Up',
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            navigateToSignUp(context);
          },
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.brightRed,
        ),
      ),
    ];
  }

  Future<dynamic> navigateToSignUp(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpScreen()),
    );
  }
}
