import 'package:farmers_app/Componets/header.dart';
import 'package:flutter/material.dart';

class DetailsSammanMarathi extends StatelessWidget {
  const DetailsSammanMarathi({super.key});

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
                      fontSize: 20,
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
          child: Image.network(
            'https://dashboard.codeparrot.ai/api/assets/Z3u5gUjX1HzWCCiC',
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
            'प्रधानमंत्री किसान सन्मान निधी (पीएम-किसान)',
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
            'प्रधानमंत्री किसान सन्मान निधी (पीएम-किसान) योजना भारतभरातील पात्र शेतकऱ्यांना आर्थिक मदत देते. योजनेसाठी अर्ज करण्यासाठी चरण-दर-चरण मार्गदर्शक येथे आहे:',
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
      'स्टेप 1: आवश्यक कागदपत्रे गोळा करा',
      'आपल्याकडे हे सुनिश्चित करा:',
      '• आधार कार्ड (ओळखीसाठी बंधनकारक).',
      '• जमीनधारणेची कागदपत्रे (शेतजमिनीची मालकी दर्शविणारी).',
      '• बँक खात्याचा तपशील (लाभांच्या थेट हस्तांतरणासाठी).',
      '• मोबाइल क्रमांक (ओटीपी पडताळणीसाठी आपल्या आधारशी जोडलेला).',
      'स्टेप 2: पीएम-किसान पोर्टलला भेट द्या',
      '1. पीएम-किसान च्या अधिकृत संकेतस्थळावर जा: https://pmkisan.gov.in/.',
      '2. मुखपृष्ठावरील "शेतकरी कॉर्नर" वर नेव्हिगेट करा.',
      'स्टेप 3: नवीन शेतकरी नोंदणी',
      '1. शेतकरी कोपर् यात "नवीन शेतकरी नोंदणी" वर क्लिक करा.',
      '2. आपला आधार क्रमांक प्रविष्ट करा आणि आपले राज्य निवडा.',
      '3. वैयक्तिक तपशील, जमीन धारणेचा तपशील आणि बँक खात्याची माहिती सह नोंदणी फॉर्म भरा.',
      '4. फॉर्म सबमिट करा.',
      'चरण 4: पडताळणी प्रक्रिया',
      '1. सबमिट केल्यानंतर अर्ज पडताळणीसाठी पाठवला जातो.',
      '2. स्थानिक अधिकारी आपल्या जमिनीच्या नोंदी आणि पात्रतेची पडताळणी करतील.',
      '3. अतिरिक्त कागदपत्रे किंवा तपशील आवश्यक असल्यास आपल्याशी संपर्क साधला जाऊ शकतो.',
      'स्टेप 5: अर्जाची स्थिती तपासा',
      '1. शेतकऱ्यामध्ये "लाभार्थी स्थिती" पर्याय वापरा.',
      '2. आपला आधार क्रमांक किंवा बँक खाते क्रमांक प्रविष्ट करा.',
      'स्टेप 6: लाभ मिळवा',
      'मंजूर झाल्यानंतर, वार्षिक ₹6,000 ची आर्थिक मदत (प्रत्येकी ₹2,000 च्या तीन हप्त्यांमध्ये) थेट आपल्या नोंदणीकृत बँक खात्यात जमा केली जाईल.',
      'महत्त्वाच्या टिपा',
      '• सुरळीत पेमेंट प्रक्रियेसाठी आपला आधार बँक खात्याशी लिंक असल्याची खात्री करा.',
      '• कोणत्याही समस्या आल्यास, मदतीसाठी जवळच्या CSC (कॉमन सर्व्हिस सेंटर) ला भेट द्या.',
      '• अधिकृत पीएम-किसान पोर्टल नियमितपणे तपासून अद्ययावत राहा.',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: steps.map((step) => _buildStep(step)).toList(),
    );
  }

  Widget _buildStep(String step) {
    final isStepHeader = step.startsWith('स्टेप') ||
        step.startsWith('चरण') ||
        step.startsWith('महत्त्वाच्या टिपा');
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
