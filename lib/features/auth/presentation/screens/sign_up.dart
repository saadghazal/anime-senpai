import 'package:anime_senpai/theme/app_colors.dart';
import 'package:anime_senpai/theme/app_password_field.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_button.dart';
import '../../../../theme/app_text_field.dart';
import '../../../../theme/height_space.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildScreenBody(),
    );
  }

  SafeArea buildScreenBody() {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: buildScreenBodyElements(),
        ),
      ),
    );
  }

  List<Widget> buildScreenBodyElements() {
    return [
      buildBackButtonAndTitle(),
      SizedBox(
        height: (2 * 2.35).h, // 40
      ),
      buildSignUpForm(),
      SizedBox(
        height: 2.35.h, // 20
      ),
      buildSignUpButton()
    ];
  }

  Padding buildSignUpButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppButton(
        appButtonStyle: AppButtonStyle(
          backgroundColor: AppColors.brightRed,
          textColor: Colors.white,
          text: 'Sign Up',
          height: 5.85.h,
          width: double.maxFinite,
        ),
        whenButtonClicked: () {},
      ),
    );
  }

  Column buildBackButtonAndTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackButton(),
        HeightSpace(
          space: 2.35.h, // 65
        ),
        const Center(
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Padding buildSignUpForm() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          buildPictureUploadColumn(),
          SizedBox(
            height: 1.77.h, // 15
          ),
          buildSignUpTextFieldWith(label: 'Nickname'),
          SizedBox(
            height: 1.77.h, // 15
          ),
          buildSignUpTextFieldWith(label: 'Email'),
          SizedBox(
            height: 1.77.h, // 15
          ),
          buildPasswordTextField(),
        ],
      ),
    );
  }

  Column buildPictureUploadColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildPictureAvatarPlaceholder(),
        SizedBox(
          height: 1.18.h, // 10
        ),
        buildUploadPictureButton(),
      ],
    );
  }

  TextButton buildUploadPictureButton() {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Upload Picture',
        style: TextStyle(
          color: AppColors.brightRed,
        ),
      ),
    );
  }

  Center buildPictureAvatarPlaceholder() {
    return const Center(
      child: CircleAvatar(
        radius: 28,
        backgroundColor: AppColors.brightRed,
        child: Icon(
          Icons.cloud_upload_rounded,
          color: Colors.white,
        ),
      ),
    );
  }

  Column buildPasswordTextField() {
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

  Column buildSignUpTextFieldWith({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 13.5,
          ),
        ),
        SizedBox(
          height: 1.1.h, // 5
        ),
        AppTextField(
          placeholder: 'Enter your ${label.toLowerCase()}',
        ),
      ],
    );
  }
}
