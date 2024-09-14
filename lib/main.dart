import 'package:anime_senpai/features/auth/presentation/screens/onboarding.dart';
import 'package:anime_senpai/features/home/presentation/screens/home_screen.dart';
import 'package:anime_senpai/features/home/presentation/screens/main_screen.dart';
import 'package:anime_senpai/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return MaterialApp(
          title: 'Anime Senpai',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Raleway',
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: MainScreen(),
        );
      },
    );
  }
}
