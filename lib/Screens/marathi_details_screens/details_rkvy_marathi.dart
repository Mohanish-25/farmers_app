import 'package:farmers_app/Componets/button_bar.dart';
import 'package:farmers_app/Componets/custom_drawer_and_appbar_marathi.dart';
import 'package:flutter/material.dart';

class DetailsRKVYMarathi extends StatelessWidget {
  const DetailsRKVYMarathi({super.key});

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
                    urlApply: 'https://www.myscheme.gov.in/schemes/rkvy',
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
            'assets/images/PM_RKVY.jpg', // Update with the correct image path
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
            'राष्ट्रीय कृषी विकास योजना (RKVY)',
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
            'राष्ट्रीय कृषी विकास योजना (RKVY)',
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
      '1. 2007 मध्ये सुरू केली गेली, RKVY ची उद्दीष्टे कृषी उत्पादन क्षमता वाढवणे आहे.',
      '2. शेतीतील आधुनिक तंत्रज्ञानाचा स्वीकार, पिकांच्या सुधारणेसाठी निधी देणे यावर लक्ष केंद्रित करते.',
      '3. राज्य-आधारित कृषी प्रकल्पांना केंद्रीय सरकारकडून निधी दिला जातो.',
      '4. शेतकऱ्यांना जलवायू परिवर्तनानुसार शेतीत टिकाव राखण्यास मदत करते.',
      '5. या योजनेचे प्रमुख उद्दिष्ट शेतकऱ्यांच्या उत्पन्नात वाढ करणे आणि कृषी क्षेत्राचे फायनान्शियल सुदृढीकरण करणे आहे.',
      '6. योजना राज्य सरकारांद्वारे अंमलात आणली जाते, आणि एकूण मिळालेल्या निधीचा 60% हिस्सा केंद्र सरकाराने दिला जातो.',
      'अर्हता:',
      '1. अर्ज राज्य सरकारांद्वारे सादर केले जातात.',
      '2. कृषी विभाग संबंधित राज्यात प्रकल्प प्रस्ताव स्वीकारतो.',
      '3. शेतकरी, कृषी संस्थाएं, आणि संबंधित भागीदारांना प्रकल्पांमध्ये सामील होण्याची संधी आहे.',
      'फायदे:',
      '1. कृषी क्षेत्रात नवीन तंत्रज्ञानाची अंमलबजावणी.',
      '2. अधिक उत्पादन आणि कृषी उपक्रमासाठी सुलभ निधी मिळवणे.',
      '3. शेतकऱ्यांचे जीवनमान सुधारणा.',
      '4. जलवायू परिवर्तनाचे परिणाम कमी करण्यासाठी तंत्रज्ञान आधारित उपाय.',
      '5. कृषी उत्पादन प्रणालीच्या संपूर्ण साखळीचा समावेश, ज्यात सेंद्रिय शेती आणि जलवर्धनशील पद्धतींचा समावेश असतो.',
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
