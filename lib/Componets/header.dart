import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String collegeLogo;
  final String nssLogo;

  const Header({
    super.key,
    this.collegeLogo = 'assets/images/College_Logo.png',
    this.nssLogo = 'assets/images/NSS_Logo.png',
  });

  @override
  Widget build(BuildContext context) {
    // Get the width of the screen
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define responsive dimensions
    final logoWidth =
        screenWidth * 0.10; // College logo width as 10% of screen width
    final nssLogoWidth =
        screenWidth * 0.15; // NSS logo width as 14% of screen width
    final spacingBetweenLogos =
        screenWidth * 0.05; // Spacing as 5% of screen width
    final textFontSize = screenWidth * 0.06; // Font size as 6% of screen width

    return Padding(
      padding: EdgeInsets.fromLTRB(
          screenWidth * 0.05, screenHeight * 0.03, screenWidth * 0.05, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                collegeLogo,
                width: logoWidth,
                height: logoWidth * 1.35, // Maintain aspect ratio
                fit: BoxFit.contain,
              ),
              SizedBox(width: spacingBetweenLogos),
              Text(
                'PESMCOE ',
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: textFontSize,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
              Text(
                'NSS UNIT',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: textFontSize,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.15,
                  color: const Color(0xFF132672),
                  height: 1.2,
                ),
              ),
            ],
          ),
          Image.asset(
            nssLogo,
            width: nssLogoWidth,
            height: nssLogoWidth * 1.1, // Maintain aspect ratio
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
