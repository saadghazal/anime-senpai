import 'package:anime_senpai/features/auth/presentation/screens/onboarding.dart';
import 'package:anime_senpai/theme/app_button.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:anime_senpai/theme/height_space.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_password_field.dart';
import '../../../../theme/app_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildScreenBody(),
    );
  }

  SafeArea buildScreenBody() {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildBackButtonAndTitle(),
            SizedBox(
              height: (2 * 2.35).h, // 40
            ),
            buildLoginFieldsAndForgetPassword(),
            SizedBox(
              height: 2.35.h, // 15
            ),
            buildLoginButton(),
            SizedBox(
              height: 2.35.h,
            ),
            buildHasNoAccount(),
          ],
        ),
      ),
    );
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

  Center buildHasNoAccount() {
    return Center(
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontFamily: 'Raleway',
            color: Colors.black,
          ),
          children: [
            const TextSpan(
              text: 'Don\'t have an account?',
            ),
            TextSpan(
              text: ' Sign Up',
              recognizer: TapGestureRecognizer()..onTap = () {},
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.brightRed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
