import 'package:flutter/material.dart';

class IllustrationSection extends StatelessWidget {
  final String? imagePath;
  final String? mainTitle;
  final String? subtitle;
  final String? description;

  const IllustrationSection({
    Key? key,
    this.imagePath = 'assets/images/Illustration.png',
    this.mainTitle = 'Kisano ko',
    this.subtitle = 'Saath Jode',
    this.description = 'Aadhik Vikas ki Aur Badhe!',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define responsive dimensions
    final imageWidth = screenWidth * 0.4; // 40% of screen width
    final imageHeight = screenHeight * 0.2; // 20% of screen height
    final mainTitleFontSize = screenWidth * 0.1; // 10% of screen width
    final subtitleFontSize = screenWidth * 0.08; // 8% of screen width
    final descriptionFontSize = screenWidth * 0.05; // 5% of screen width

    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.symmetric(horizontal: screenWidth * 0.04), // 4% padding
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: imageWidth,
              height: imageHeight,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Image.asset(
                  imagePath!,
                  width: imageWidth,
                  height: imageHeight,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02), // 2% of screen height
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainTitle!,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: mainTitleFontSize,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.15,
                  height: 1.2,
                  color: const Color(0xFF12723D),
                ),
              ),
              Text(
                subtitle!,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: subtitleFontSize,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.15,
                  height: 1.2,
                  color: const Color(0xFFFF7D24),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01), // 1% of screen height
          Text(
            description!,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: descriptionFontSize,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.15,
              height: 1.82, // 40px line height / 22px font size
              color: const Color(0xFF2C2E35),
            ),
          ),
        ],
      ),
    );
  }
}
