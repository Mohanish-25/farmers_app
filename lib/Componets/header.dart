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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                collegeLogo,
                width: 37,
                height: 50.21,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 41),
              const Text(
                'PESMCOE',
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.15,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'NSS UNIT',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.15,
                  color: Color(0xFF132672),
                  height: 1.2,
                ),
              ),
            ],
          ),
          Image.network(
            nssLogo,
            width: 52.54,
            height: 59,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
