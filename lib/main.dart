import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

void main() {runApp(CoffeeApp());}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 223, 219, 219),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: OnboardingScreen(),
    );
  }
}