import 'package:flutter/material.dart';
import 'package:recipesapp/screens/home_screen.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'screens/onboarding_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => const HomeSreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SFProText',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.orange,
        ),
      ),
      // home: OnboardingScreen(),
      home: LiquidSwipe(pages: [OnboardingScreen(), HomeSreen()]),
    );
  }
}
