import 'package:farmers_app/Componets/button_bar.dart';
import 'package:farmers_app/Componets/custom_drawer_and_appbar_marathi.dart';
import 'package:flutter/material.dart';

class DetailsFasalBimaMarathi extends StatelessWidget {
  const DetailsFasalBimaMarathi({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDrawerAppBar(
            title: 'तपशील', // Title in Marathi
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
                    urlApply: 'https://pmfby.gov.in/',
                    textApply: 'अर्ज करा',
                    urlTutorial: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                    textTutorial: 'ट्यूटोरियल',
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
            'assets/images/PM_FasalBima.jpg', // Update with the correct image path
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
                'श्रेणी नाव',
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
                'ब्रँड नाव',
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
            'प्रधानमंत्री फसल बीमा योजना (PMFBY)',
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
            'उत्पादन सिंहावलोकन',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'प्रधानमंत्री फसल बीमा योजना (PMFBY)',
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
      'तपशील:',
      '1. प्रधानमंत्री फसल बीमा योजना (PMFBY) शेतकऱ्यांना पिकांच्या नुकसानीपासून संरक्षण देण्यासाठी आहे.',
      '2. या योजनेअंतर्गत, शेतकऱ्यांना पिकांच्या नुकसानीसाठी विमा संरक्षण दिले जाते.',
      '3. या योजनेचा उद्देश शेतकऱ्यांना आर्थिक सुरक्षा प्रदान करणे आहे.',
      '4. योजनेत सामील होण्यासाठी, शेतकऱ्यांनी त्यांच्या पिकांसाठी विमा घेणे आवश्यक आहे.',
      '5. योजनेत सामील होण्यासाठी, शेतकऱ्यांनी त्यांच्या पिकांसाठी विमा प्रीमियम भरणे आवश्यक आहे.',
      'अर्हता:',
      '1. अर्जदार शेतकरी असावा.',
      '2. अर्जदाराने त्यांच्या पिकांसाठी विमा घेतलेला असावा.',
      '3. अर्जदाराने विमा प्रीमियम भरणे आवश्यक आहे.',
      'फायदे:',
      '1. पिकांच्या नुकसानीपासून संरक्षण: शेतकऱ्यांना पिकांच्या नुकसानीसाठी विमा संरक्षण दिले जाते.',
      '2. आर्थिक सुरक्षा: शेतकऱ्यांना आर्थिक सुरक्षा प्रदान करणे.',
      '3. सुलभ अर्ज प्रक्रिया: अर्ज प्रक्रिया सोपी आणि सुलभ आहे.',
      '4. सरकारी योजना: ही योजना केंद्र सरकारद्वारे चालवली जाते.',
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
