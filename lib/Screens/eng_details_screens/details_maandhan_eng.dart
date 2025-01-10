import 'package:farmers_app/Componets/button_bar.dart';
import 'package:farmers_app/Componets/custom_drawer_and_appbar_eng.dart';
import 'package:flutter/material.dart';

class DetailsMaandhanEnglish extends StatelessWidget {
  const DetailsMaandhanEnglish({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawer: CustomDrawerAppBarEng.buildDrawer(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDrawerAppBarEng(
            title: 'Details', // Title in English
            onBackPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const BannerSection(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.02,
                    ),
                    child: const TitleSection(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.02,
                    ),
                    child: const ProductOverview(),
                  ),
                  const Buttons(
                    urlApply: 'https://maandhan.in/',
                    textApply: 'Apply',
                    urlTutorial: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                    textTutorial: 'Tutorial',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: screenWidth * 0.05),
          child: Image.asset(
            'assets/images/PM_MaanDhan.jpg', // Update with the correct image path
            width: screenWidth * 0.9,
            height: screenWidth * 0.5,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Category Name',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF888888),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 1,
                height: 12,
                color: const Color(0xFF888888),
              ),
              const SizedBox(width: 8),
              const Text(
                'Brand Name',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF888888),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Pradhan Mantri Maan-Dhan Yojana (PM-MaanDhan)',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xFF2C2E35),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductOverview extends StatelessWidget {
  const ProductOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Product Overview',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Pradhan Mantri Maan-Dhan Yojana (PM-MaanDhan) is a pension scheme for unorganized sector workers. Here are the details:',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF4C4C4C),
              height: 1.43,
              letterSpacing: 0.1,
            ),
          ),
          const SizedBox(height: 21),
          _buildDetails(),
        ],
      ),
    );
  }

  Widget _buildDetails() {
    const details = [
      'Details:',
      '1. Pradhan Mantri Maan-Dhan Yojana (PM-MaanDhan) is a pension scheme for unorganized sector workers.',
      '2. Under this scheme, a monthly pension of ₹3000 is provided after the age of 60.',
      '3. The aim of this scheme is to provide financial security to unorganized sector workers.',
      '4. The age limit to join the scheme is 18 to 40 years.',
      '5. The monthly income should be less than ₹15,000 to join the scheme.',
      'Eligibility:',
      '1. The applicant should be between 18 to 40 years of age.',
      '2. The monthly income should be less than ₹15,000.',
      '3. The applicant should be an unorganized sector worker.',
      'Benefits:',
      '1. Pension: A monthly pension of ₹3000 after the age of 60.',
      '2. Financial Security: Provides financial security to unorganized sector workers.',
      '3. Easy Application Process: The application process is simple and easy.',
      '4. Government Scheme: This scheme is run by the central government.',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: details.map((detail) => _buildDetail(detail)).toList(),
    );
  }

  Widget _buildDetail(String detail) {
    final isDetailHeader = detail.endsWith(':');
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Text(
        detail,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: isDetailHeader ? FontWeight.w600 : FontWeight.w400,
          color: const Color(0xFF4C4C4C),
          height: 1.43,
          letterSpacing: 0.1,
        ),
      ),
    );
  }
}
