import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Screens/signin/signin_eng.dart';
import 'package:farmers_app/Screens/signin/signin_mar.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

// 20% of screen width
// Maintain aspect ratio

    return Scaffold(
      backgroundColor: const Color(0xFFF2FFF8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header with logos
            const Header(),
            SizedBox(height: screenHeight * 0.1), // 10% of screen height
            // Main content
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.08), // 8% of screen width
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Language/भाषा',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: screenWidth * 0.08, // 8% of screen width
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF2C2E35),
                      letterSpacing: 0.15,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03), // 3% of screen height
                  Text(
                    'Please select your preferred language.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: screenWidth * 0.05, // 5% of screen width
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF2C2E35),
                      letterSpacing: 0.15,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02), // 2% of screen height
                  Text(
                    'कृपया तुमची पसंतीची भाषा निवडा.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: screenWidth * 0.05, // 5% of screen width
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF2C2E35),
                      letterSpacing: 0.15,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06), // 6% of screen height
                  // Language buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _LanguageButton(
                        text: 'English',
                        onTap: () {
                          // In your navigation code
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInEnglish()),
                          );
                        },
                      ),
                      _LanguageButton(
                        text: 'मराठी',
                        onTap: () {
                          // Handle Marathi selection
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInMarathi()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LanguageButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _LanguageButton({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.1, // 10% of screen width
          vertical: screenWidth * 0.06, // 6% of screen width
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF12723D),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: screenWidth * 0.06, // 6% of screen width
            fontWeight: FontWeight.w700,
            color: const Color(0xFF12723D),
            letterSpacing: 0.15,
            height: 1.4,
          ),
        ),
      ),
    );
  }
}
