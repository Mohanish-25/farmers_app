import 'package:farmers_app/Componets/button_bar.dart';
import 'package:farmers_app/Componets/custom_drawer_and_appbar_marathi.dart';
import 'package:farmers_app/utils/strings.dart';
import 'package:flutter/material.dart';

class DetailsSoilHealthCardMarathi extends StatelessWidget {
  const DetailsSoilHealthCardMarathi({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawer: CustomDrawerAppBar.buildDrawer(context),
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
                      urlApply: 'https://soilhealth.dac.gov.in/',
                      textApply: 'अर्ज करा',
                      urlTutorial: AppStrings.soilHealth,
                      textTutorial: 'ट्यूटोरियल'),
                ],
              ),
            ),
          )
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
            'माती आरोग्य पत्रक योजना',
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
            'माती आरोग्य पत्रक योजना',
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
      '1. 2015 मध्ये सुरू झालेली योजना शेतकऱ्यांना माती चाचणीच्या आधारे योग्य खत वापरण्याच्या सल्ल्याने माती आरोग्य पत्रक प्रदान करते.',
      '2. प्रत्येक शेतासाठी प्रत्येक दोन वर्षांत माती आरोग्य पत्रक जारी केले जाते.',
      '3. शेतकऱ्यांना खत वापरण्यासाठी मातीच्या चाचणीच्या आधारे सूचना दिली जातात.',
      '4. हे खतांच्या अत्यधिक वापराची जोखीम कमी करण्यासाठी समतोल खतांचा वापर प्रोत्साहित करते.',
      '5. शेतकऱ्यांना दीर्घकालीन टिकाऊ शेतीसाठी मार्गदर्शन दिले जाते.',
      'अर्हता:',
      '1. सर्व शेतकऱ्यांना योजना उपलब्ध आहे, जरी त्यांची जमीन आकारात लहान असो.',
      '2. शेतकऱ्यांना जिल्ह्यात नोंदणी करणे आवश्यक आहे.',
      '3. प्रत्येक शेतासाठी एकच कार्ड जारी केले जाते.',
      'फायदे:',
      '1. मातीचे आरोग्य आणि उत्पादनक्षमता वाढवते.',
      '2. खतांच्या पर्यावरणावर होणाऱ्या परिणामाचे कमी करते.',
      '3. शेतकऱ्यांना विशिष्ट मार्गदर्शन देऊन शाश्वत शेतीचा समर्थन करतो.',
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
