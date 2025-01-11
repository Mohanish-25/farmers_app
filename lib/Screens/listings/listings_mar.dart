import 'package:farmers_app/Componets/custom_drawer_and_appbar_marathi.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/Componets/custom_card.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_creditcard_marathi.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_fasalbima_marathi.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_maandhan_marathi.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_rkvy_marathi.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_samman_marathi.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_soilhealth_marathi.dart';

class ListingsMarathiScreen extends StatefulWidget {
  const ListingsMarathiScreen({super.key});

  @override
  _ListingsMarathiScreenState createState() => _ListingsMarathiScreenState();
}

class _ListingsMarathiScreenState extends State<ListingsMarathiScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double paddingHorizontal = screenWidth * 0.05;

    return Scaffold(
      endDrawer: CustomDrawerAppBar.buildDrawer(context),
      body: Column(
        children: [
          CustomDrawerAppBar(
            title: 'योजना', // Title in Marathi
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
                      title: 'प्रधानमंत्री किसान सन्मान निधी',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsSammanMarathi(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_MaanDhan.jpg',
                      title: 'प्रधानमंत्री किसान मानधन योजना',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DetailsMaandhanMarathi(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_CreditCard.jpg',
                      title: 'किसान क्रेडिट कार्ड योजना',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DetailsCreditCardMarathi(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_RKVY.jpg',
                      title: 'राष्ट्रीय कृषी विकास योजना',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsRKVYMarathi(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_FasalBima.jpg',
                      title: 'प्रधानमंत्री फसल बीमा योजना',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DetailsFasalBimaMarathi(),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/Soil_HealthCard.jpg',
                      title: 'माती आरोग्य पत्रक योजना',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DetailsSoilHealthCardMarathi(),
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
