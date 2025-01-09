import 'package:farmers_app/Componets/button_bar.dart';
import 'package:farmers_app/Componets/header.dart';
import 'package:flutter/material.dart';

class DetailsFasalBimaMarathi extends StatelessWidget {
  const DetailsFasalBimaMarathi({super.key});

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
                    'तपशील',
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
              urlApply: 'https://pmfby.gov.in/',
              textApply: 'अर्ज करा',
              urlTutorial: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
              textTutorial: 'ट्यूटोरियल',
            ),
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
      '1. 2016 मध्ये सुरू झालेली ही योजना नैसर्गिक आपत्तीं, कीटक आणि रोगांपासून जोखीम संरक्षण प्रदान करते.',
      '2. खरीफ, रबी आणि वाणिज्यिक/हॉर्टिकल्चल पिके कव्हर केली जातात.',
      '3. खरीफ पिकांसाठी 2%, रबी पिकांसाठी 1.5% आणि वाणिज्यिक पिकांसाठी 5% यांसारख्या कमी प्रीमियम दरांसाठी ही योजना उपलब्ध आहे.',
      '4. सरकार प्रीमियम सबसिडी देऊन आर्थिक ओझे कमी करण्यास मदत करते.',
      '5. रोख नुकसान, वाया गेलेली बियाणे, आणि काढणी नंतरच्या नुकसानीसाठी क्लेम सेटलमेंट उपलब्ध करतो.',
      '6. यंत्रणा उड्डाण सेंसिंग आणि जमिनीच्या सत्यापनासाठी नुकसानाचा मूल्यांकन करते.',
      'अर्हता:',
      '1. जो शेतकरी नोंदणीकृत पिके घेत आहे आणि नोंदणीकृत क्षेत्रांमध्ये आहे तो पात्र आहे.',
      '2. कर्ज घेणारे शेतकरी आवश्यक असतात.',
      '3. शेतकऱ्यांना आधार आणि बँक खात्याच्या तपशीलांची आवश्यकता असते.',
      '4. किरायेदार शेतकरी आणि शेअरक्रॉपर्ससाठी कव्हरेज उपलब्ध आहे.',
      'फायदे:',
      '1. अनपेक्षित घटना किंवा नैसर्गिक आपत्तींमुळे पीक नुकसान होण्यापासून आर्थिक संरक्षण मिळते.',
      '2. पीक नुकसानीच्या बाबतीत एक नियमित उत्पन्न ओळ ठेवण्यास मदत करतो.',
      '3. शेतकऱ्यांना आधुनिक पद्धतींमध्ये भाग घेण्यास प्रोत्साहन देते.',
      '4. नैसर्गिक आपत्तींचा आर्थिक परिणाम कमी करतो.',
      '5. शेतकऱ्यांचा आत्मविश्वास वाढवतो आणि उत्तम शेती तंत्रज्ञानांना प्रोत्साहन देतो.',
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
