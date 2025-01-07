import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String collegeLogo;
  final String nssLogo;

  const Header({
    super.key,
    this.collegeLogo = 'assets/images/College_Logo.png',
    this.nssLogo =
        'https://dashboard.codeparrot.ai/api/assets/Z3uNL0jX1HzWCCfU',
  });

  @override
  Widget build(BuildContext context) {
    // Get the width of the screen
    final screenWidth = MediaQuery.of(context).size.width;

    // Define responsive dimensions
    final logoWidth =
        screenWidth * 0.1; // College logo width as 10% of screen width
    final nssLogoWidth =
        screenWidth * 0.14; // NSS logo width as 14% of screen width
    final spacingBetweenLogos =
        screenWidth * 0.05; // Spacing as 5% of screen width
    final textFontSize = screenWidth * 0.06; // Font size as 6% of screen width

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.07, // Padding as 7% of screen width
        vertical: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  ), // Adjust spacing between text
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
            ],
          ),
          Image.network(
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
