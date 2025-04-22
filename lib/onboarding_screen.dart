import 'package:flutter/material.dart';
import 'home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCCDBA),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('coffee.gif', height: 250),
            const SizedBox(height: 100),
            const Text(
              'Fall in Love with\nCoffee in Blissful Delight!',
              style: TextStyle(fontFamily:'LilitaOne', color: Color.fromARGB(255, 63, 63, 63), fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to our cozy coffee corner,\nwhere every cup is a delightful hug for you.',
              style: TextStyle(fontFamily:'LilitaOne', color: Color.fromARGB(179, 0, 0, 0), fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFBC02D),
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: const Text('Get Started', style: TextStyle(fontFamily:'LilitaOne',color: Color(0xFF4E342E), fontWeight: FontWeight.bold )),
            )
          ],
        ),
      ),
    );
  }
}