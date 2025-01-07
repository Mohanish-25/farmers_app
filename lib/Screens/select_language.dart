import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Screens/signin/signin_eng.dart';
import 'package:farmers_app/Screens/signin/signin_mar.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2FFF8),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header with logos
            const Header(),
            const SizedBox(height: 100),
            // Main content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Language/भाषा',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2C2E35),
                      letterSpacing: 0.15,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 33),
                  const Text(
                    'Please select your preferred language.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2C2E35),
                      letterSpacing: 0.15,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 23),
                  const Text(
                    'कृपया तुमची पसंतीची भाषा निवडा.',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2C2E35),
                      letterSpacing: 0.15,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 62),
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
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF12723D),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF12723D),
            letterSpacing: 0.15,
            height: 1.4,
          ),
        ),
      ),
    );
  }
}

// To integrate other languages:
// 1. Create a language enum
// enum AppLanguage { english, marathi }

// 2. Create a class for storing translations
// class AppLocalizations {
//   static Map<String, Map<String, String>> _localizedValues = {
//     'en': {
//       'selectLanguage': 'Please select your preferred language.',
//       // Add more translations
//     },
//     'mr': {
//       'selectLanguage': 'कृपया तुमची पसंतीची भाषा निवडा.',
//       // Add more translations
//     },
//   };
// }

// 3. Use a state management solution (Provider/Bloc) to manage language changes
// 4. Wrap the app with a localization delegate
// 5. Access translations using the current locale
