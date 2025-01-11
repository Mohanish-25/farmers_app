import 'package:farmers_app/Componets/custom_card.dart';
import 'package:farmers_app/Componets/custom_drawer_and_appbar_eng.dart';
import 'package:farmers_app/Screens/eng_details_screens/details_creditcard_eng.dart';
import 'package:farmers_app/Screens/eng_details_screens/details_fasalbima_eng.dart';
import 'package:farmers_app/Screens/eng_details_screens/details_maandhan_eng.dart';
import 'package:farmers_app/Screens/eng_details_screens/details_rkvy_eng.dart';
import 'package:farmers_app/Screens/eng_details_screens/details_samman_eng.dart';
import 'package:farmers_app/Screens/eng_details_screens/details_soilhealth_eng.dart';

import 'package:flutter/material.dart';

class ListingsEnglishScreen extends StatefulWidget {
  const ListingsEnglishScreen({super.key});

  @override
  _ListingsEnglishScreenState createState() => _ListingsEnglishScreenState();
}

class _ListingsEnglishScreenState extends State<ListingsEnglishScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double paddingHorizontal = screenWidth * 0.05;

    return Scaffold(
      endDrawer: CustomDrawerAppBarEng.buildDrawer(context),
      body: Column(
        children: [
          CustomDrawerAppBarEng(
            title: 'Schemes', // Title in English
            onBackPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_Samman.jpg',
                      title: 'Pradhan Mantri Kisan Samman Nidhi',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsSammanEnglish(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_MaanDhan.jpg',
                      title: 'Pradhan Mantri Kisan Maandhan Yojana',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DetailsMaandhanEnglish(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_CreditCard.jpg',
                      title: 'Kisan Credit Card Scheme',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DetailsKisanCreditCardEnglish(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_RKVY.jpg',
                      title: 'Rashtriya Krishi Vikas Yojana',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsRKVYEnglish(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_FasalBima.jpg',
                      title: 'Pradhan Mantri Fasal Bima Yojana',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DetailsFasalBimaEnglish(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/Soil_HealthCard.jpg',
                      title: 'Soil Health Card Scheme',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DetailsSoilHealthCardEnglish(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
