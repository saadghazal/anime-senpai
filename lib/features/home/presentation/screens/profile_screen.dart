import 'package:anime_senpai/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return buildScreenContent();
  }

  SafeArea buildScreenContent() {
    return SafeArea(
      bottom: false,
      child: SizedBox(
        width: double.maxFinite,
        child: buildProfileScreen(),
      ),
    );
  }

  Widget buildProfileScreen() {
    return Padding(
      padding: EdgeInsets.only(top: 5.87.h), // 50
      child: SingleChildScrollView(
        child: buildProfileScreenContent(),
      ),
    );
  }

  Column buildProfileScreenContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildProfilePictureAndName(),
        SizedBox(
          height: 4.7.h, // 40
        ),
        buildSettingsOptionsSection(
          sectionTitle: 'Profile Settings',
          sectionOptions: buildProfileSettingsOptions(),
        ),
        SizedBox(
          height: 2.4.h, // 40
        ),
        buildSettingsOptionsSection(
          sectionTitle: 'App Settings',
          sectionOptions: buildAppSettingsOptions(),
        ),
      ],
    );
  }

  Widget buildSettingsOptionsSection({
    required String sectionTitle,
    required Widget sectionOptions,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: buildSectionContent(sectionTitle, sectionOptions),
    );
  }

  Column buildSectionContent(
    String sectionTitle,
    Widget sectionOptions,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSettingsSectionTitle(title: sectionTitle),
        SizedBox(
          height: 1.2.h,
        ),
        IntrinsicHeight(
          child: Container(
            decoration: buildSettingsBoxDecoration(),
            child: sectionOptions,
          ),
        ),
      ],
    );
  }

  Column buildAppSettingsOptions() {
    return Column(
      children: [
        buildSettingOption(title: 'Change Language'),
      ],
    );
  }

  Text buildSettingsSectionTitle({required String title}) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Column buildProfileSettingsOptions() {
    return Column(
      children: [
        buildSettingOption(title: 'Change Profile Picture'),
        buildSettingsOptionsSeparator(),
        buildSettingOption(title: 'Change Nickname'),
        buildSettingsOptionsSeparator(),
        buildSettingOption(title: 'Change Password')
      ],
    );
  }

  BoxDecoration buildSettingsBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.greenBoxColor,
    );
  }

  Container buildSettingsOptionsSeparator() {
    return Container(
      width: double.maxFinite,
      height: 1,
      color: AppColors.deepGreen,
    );
  }

  ListTile buildSettingOption({required String title}) {
    return ListTile(
      leading: buildSettingOptionTitleText(title),
      trailing: buildSettingOptionArrowIcon(),
      onTap: () {},
    );
  }

  Text buildSettingOptionTitleText(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Icon buildSettingOptionArrowIcon() {
    return Icon(
      Icons.arrow_forward_ios_rounded,
      size: 20.sp,
      color: Colors.black,
    );
  }

  Column buildProfilePictureAndName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildProfilePictureAvatar(),
        SizedBox(
          height: 1.2.h, //10
        ),
        buildProfileName(),
      ],
    );
  }

  Container buildProfilePictureAvatar() {
    return Container(
      height: 11.74.h, //100
      width: 25.5.w, //100
      decoration: buildAvatarDecoration(),
    );
  }

  BoxDecoration buildAvatarDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      image: buildAvatarImage(),
    );
  }

  DecorationImage buildAvatarImage() {
    return const DecorationImage(
      image: AssetImage('assets/images/naruto_pic.jpg'),
      fit: BoxFit.cover,
    );
  }

  Text buildProfileName() {
    return const Text(
      'Naruto Kun',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 22,
        color: Colors.white,
      ),
    );
  }
}
