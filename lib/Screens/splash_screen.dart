import 'package:flutter/material.dart';
import 'package:farmers_app/Screens/select_language.dart'; // Make sure to import your language select screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LanguageScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  width: 80,
                  height: 108.57,
                ),
                const SizedBox(width: 35),
                Image.network(
                  'https://dashboard.codeparrot.ai/api/assets/Z3t9kXwdoACPgq32',
                  width: 1,
                  height: 136,
                ),
                const SizedBox(width: 12),
                Image.network(
                  'https://dashboard.codeparrot.ai/api/assets/Z3t9kXwdoACPgq33',
                  width: 122,
                  height: 137,
                ),
              ],
            ),
            const SizedBox(height: 25),
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
            const SizedBox(height: 16),
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
            const SizedBox(height: 8),
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
            const SizedBox(height: 45),
            const Text(
              'Kisaan App',
              style: TextStyle(
                fontFamily: 'Reggae One',
                fontSize: 42,
                fontWeight: FontWeight.w400,
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
