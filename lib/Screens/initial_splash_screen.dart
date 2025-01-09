import 'package:flutter/material.dart';
import 'package:farmers_app/Screens/splash_screen.dart';

class InitialSplashScreen extends StatefulWidget {
  const InitialSplashScreen({super.key});

  @override
  _InitialSplashScreenState createState() => _InitialSplashScreenState();
}

class _InitialSplashScreenState extends State<InitialSplashScreen> {
  @override
  void initState() {
    super.initState();
    _preloadImages();
    Future.delayed(const Duration(milliseconds: 600), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen()),
      );
    });
  }

  Future<void> _preloadImages() async {
    final List<String> imagePaths = [
      'assets/images/College_Logo.png',
      'assets/images/NSS_Logo.png',
    ];

    for (String path in imagePaths) {
      await precacheImage(AssetImage(path), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;

    // Define the size for the app logo
    final logoWidth = screenWidth * 0.4; // 40% of screen width

    return Scaffold(
      backgroundColor: const Color(0xFFF2FFF8),
      body: Center(
        child: Image.asset(
          'assets/images/App_Logo.png', // Replace with your app logo path
          width: logoWidth,
          height: logoWidth,
        ),
      ),
    );
  }
}
