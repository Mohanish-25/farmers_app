import 'package:farmers_app/Screens/select_language.dart'; // Make sure to import your language select screen
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _preloadImages();
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LanguageScreen()),
      );
    });
  }

  Future<void> _preloadImages() async {
    final List<String> imagePaths = [
      'assets/images/drawer_background1.jpg',
      'assets/images/Profile_Photo.jpg',
      'assets/images/Illustration.png',
      'assets/images/PM_CreditCard.jpg',
      'assets/images/PM_FasalBima.jpg',
      'assets/images/PM_MaanDhan.jpg',
      'assets/images/PM_RKVY.jpg',
      'assets/images/PM_Samman.jpg',
      'assets/images/Soil_HealthCard.jpg',
      // Add all other asset image paths here
    ];

    for (String path in imagePaths) {
      await precacheImage(AssetImage(path), context);
    }

    // Delay for 2 seconds before navigating to the next screen
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define the size for the logos
    final logoWidth = screenWidth * 0.2; // 20% of screen width
    final logoHeight = logoWidth * 1.35; // Maintain aspect ratio

    return Scaffold(
      backgroundColor: const Color(0xFFF2FFF8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/College_Logo.png',
                  width: logoWidth * 1.3,
                  height: logoHeight,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.02), // 10 pixels padding
                  child: Container(
                    width: 2,
                    height: logoHeight,
                    color: const Color.fromARGB(255, 73, 67, 67),
                    margin: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05), // 5% of screen width
                  ),
                ),
                Image.asset(
                  'assets/images/NSS_Logo.png',
                  width: logoWidth * 1.3,
                  height: logoHeight,
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03), // 3% of screen height
            const Text(
              'PESMCOE',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: Color(0xFF12723D),
                letterSpacing: 0.15,
                height: 1.2,
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // 2% of screen height
            const Text(
              'NSS Unit',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2E339D),
                letterSpacing: 0.15,
                height: 1.2,
              ),
            ),
            SizedBox(height: screenHeight * 0.01), // 1% of screen height
            const Text(
              'presents',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xFF2C2E35),
                letterSpacing: 0.15,
                height: 2,
              ),
            ),
            SizedBox(height: screenHeight * 0.05), // 5% of screen height
            const Text(
              'Krushi मित्र',
              style: TextStyle(
                fontFamily: 'Kalam',
                fontSize: 42,
                fontWeight: FontWeight.w800,
                color: Color(0xFF12723D),
                letterSpacing: 0.15,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
