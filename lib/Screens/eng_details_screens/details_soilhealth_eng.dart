import 'package:farmers_app/Componets/button_bar.dart';
import 'package:farmers_app/Componets/header.dart';
import 'package:flutter/material.dart';

class DetailsSoilHealthCardEnglish extends StatelessWidget {
  const DetailsSoilHealthCardEnglish({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            Container(
              color: const Color(0xFFB2FFB7),
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: Color(0xFF2C2E35),
                    ),
                  ),
                ],
              ),
            ),
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
                urlApply: 'https://soilhealth.dac.gov.in/',
                textApply: 'Apply Now',
                urlTutorial: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                textTutorial: 'Tutorial')
          ],
        ),
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
            'assets/images/Soil_HealthCard.jpg', // Update with the correct image path
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
            'Soil Health Card Scheme',
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
            'Soil Health Card Scheme',
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
      '1. Launched in 2015, the scheme provides soil health cards to farmers, recommending the appropriate fertilizer use based on soil testing.',
      '2. A Soil Health Card is issued every 2 years for each holding.',
      '3. Tests soil samples and provides recommendations for fertilizer application and soil improvement.',
      '4. Promotes the use of balanced fertilizers, reducing the risk of soil degradation.',
      '5. Aims to improve soil fertility and ensure long-term sustainability in farming.',
      '6. The scheme is implemented by the Ministry of Agriculture and is available across all states.',
      'Eligibility:',
      '1. Available to all farmers, irrespective of the size of their landholding.',
      '2. Must be registered for soil testing in the district.',
      '3. The card is issued for each landholding; only one card per farm.',
      '4. Farmers must comply with the fertilizer use guidelines based on the card.',
      '5. The scheme is not restricted by crop type.',
      'Benefits:',
      '1. Improves soil health and productivity by recommending optimal fertilizer use.',
      '2. Reduces the overuse of fertilizers and their environmental impact.',
      '3. Helps in the sustainable management of soil through personalized guidance.',
      '4. Reduces input costs for farmers by recommending appropriate doses of fertilizers.',
      '5. Promotes ecological balance in farming, encouraging long-term agricultural productivity.',
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
