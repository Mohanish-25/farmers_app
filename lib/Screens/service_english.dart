import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Screens/listings_english.dart';
import 'package:flutter/material.dart';

class ServiceEnglishScreen extends StatelessWidget {
  final Function()? onContinue;
  final Function()? onBackPress;
  final bool isGovernmentSchemeSelected;
  final bool isELearningSelected;
  final Function(bool)? onGovernmentSchemeSelect;
  final Function(bool)? onELearningSelect;

  const ServiceEnglishScreen({
    super.key,
    this.onContinue,
    this.onBackPress,
    this.isGovernmentSchemeSelected = false,
    this.isELearningSelected = false,
    this.onGovernmentSchemeSelect,
    this.onELearningSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          // Top Green Bar
          Container(
            color: const Color(0xFFB2FFB7),
            padding: const EdgeInsets.fromLTRB(4, 6, 16, 6),
            height: 50,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),

          // Choose Service Text
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'Choose your Service',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),

          // Service Options
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildServiceButton(
                  'Government\nSchemes',
                  isGovernmentSchemeSelected,
                  (isSelected) {
                    if (isSelected) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListingsEnglishScreen(),
                        ),
                      );
                    }
                    onGovernmentSchemeSelect?.call(isSelected);
                  },
                ),
                _buildServiceButton(
                  'E-Learning',
                  isELearningSelected,
                  onELearningSelect,
                ),
              ],
            ),
          ),

          // Continue Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 51),
            child: SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: onContinue,
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(const Color(0xFF2B9846)),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceButton(
    String text,
    bool isSelected,
    Function(bool)? onSelect,
  ) {
    return GestureDetector(
      onTap: () => onSelect?.call(!isSelected),
      child: Container(
        width: 152,
        height: 82,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF12723D),
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: const Color(0xFF12723D),
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 0.15,
              height: 1.4,
            ),
          ),
        ),
      ),
    );
  }
}
