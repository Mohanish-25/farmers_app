import 'package:farmers_app/Componets/button_bar.dart';
import 'package:farmers_app/Componets/custom_drawer_and_appbar_marathi.dart';
import 'package:flutter/material.dart';

class DetailsSammanEnglish extends StatelessWidget {
  const DetailsSammanEnglish({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDrawerAppBar(
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
                    urlApply: 'https://pmkisan.gov.in/',
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
            'assets/images/PM_Samman.jpg', // Update with the correct image path
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
            'Pradhan Mantri Kisan Samman Nidhi (PM-Kisan)',
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
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 18),
          const Text(
            'Pradhan Mantri Kisan Samman Nidhi (PM-Kisan) scheme provides financial assistance to eligible farmers across India. Here is a step-by-step guide to apply for the scheme:',
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
          _buildSteps(),
        ],
      ),
    );
  }

  Widget _buildSteps() {
    const steps = [
      'Step 1: Gather Required Documents',
      'Ensure you have the following:',
      '• Aadhaar Card (mandatory for identification).',
      '• Landholding documents (proof of ownership of farmland).',
      '• Bank account details (for direct transfer of benefits).',
      '• Mobile number (linked to your Aadhaar for OTP verification).',
      'Step 2: Visit PM-Kisan Portal',
      '1. Go to the official PM-Kisan website.',
      '2. Navigate to the "Farmer Corner" on the homepage.',
      'Step 3: New Farmer Registration',
      '1. Click on "New Farmer Registration" in the Farmer Corner.',
      '2. Enter your Aadhaar number and select your state.',
      '3. Fill in the registration form with personal details, landholding details, and bank account information.',
      '4. Submit the form.',
      'Step 4: Verification Process',
      '1. After submission, the application is sent for verification.',
      '2. Local authorities will verify your land records and eligibility.',
      '3. You may be contacted for additional documents or details if required.',
      'Step 5: Check Application Status',
      '1. Use the "Beneficiary Status" option in the Farmer Corner.',
      '2. Enter your Aadhaar number or bank account number.',
      'Step 6: Receive Benefits',
      'Once approved, the annual financial assistance of ₹6,000 (in three installments of ₹2,000 each) will be directly credited to your registered bank account.',
      'Important Tips',
      '• Ensure your Aadhaar is linked to your bank account for smooth payment processing.',
      '• Visit the nearest CSC (Common Service Center) for assistance if you face any issues.',
      '• Regularly check the official PM-Kisan portal for updates.',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: steps.map((step) => _buildStep(step)).toList(),
    );
  }

  Widget _buildStep(String step) {
    final isStepHeader =
        step.startsWith('Step') || step.startsWith('Important Tips');
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Text(
        step,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: isStepHeader ? FontWeight.w600 : FontWeight.w400,
          color: const Color(0xFF4C4C4C),
          height: 1.43,
          letterSpacing: 0.1,
        ),
      ),
    );
  }
}
