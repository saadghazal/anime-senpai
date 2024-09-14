import 'package:anime_senpai/features/auth/presentation/screens/login.dart';
import 'package:anime_senpai/features/home/presentation/screens/home_screen.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print();
    return Scaffold(
      backgroundColor: AppColors.deepGreen,
      // bottomNavigationBar:,
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Color(0xFF081C15),
      //   showUnselectedLabels: false,
      //   showSelectedLabels: false,
      //   fixedColor: AppColors.brightRed,
      //   type: BottomNavigationBarType.fixed,
      //   // selectedItemColor: AppColors.brightRed,
      //   unselectedItemColor: Colors.white,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Ionicons.home,
      //         // color: AppColors.brightRed,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Ionicons.bookmark),
      //       label: 'Saved',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Ionicons.library,
      //         // color: AppColors.brightRed,
      //       ),
      //       label: 'Browse',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Ionicons.person_circle_outline,
      //         // color: AppColors.brightRed,
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          HomeScreen(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 7.1.h, // 60

              margin: EdgeInsets.only(left: 16, right: 16, bottom: 25),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.brightGreen),
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF081C15),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.brightGreen.withOpacity(0.4),
                    blurRadius: 15,
                    offset: Offset(0, 3),
                    // spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(-5, 0),
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(5, 0),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Ionicons.home,
                      size: 21.5.sp,
                    ),
                    onPressed: () {},
                    color: AppColors.brightGreen,
                    // size: 21.sp,
                  ),
                  Icon(
                    Ionicons.bookmark,
                    color: Colors.white,
                    // size: 21.sp,
                  ),
                  Icon(
                    Ionicons.library,
                    color: Colors.white,
                  ),
                  Icon(
                    Ionicons.person_circle,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
