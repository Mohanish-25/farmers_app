import 'package:farmers_app/Componets/custom_card.dart';
import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_creditcard_marathi.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_fasalbima_marathi.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_samman_marathi.dart';
import 'package:farmers_app/Screens/marathi_details_screens/details_soilhealth_marathi.dart';
import 'package:farmers_app/Screens/select_language.dart';
import 'package:farmers_app/Screens/signin/signin_eng.dart';
import 'package:farmers_app/Screens/signin/signin_mar.dart';
import 'package:flutter/material.dart';

class ListingsMarathiScreen extends StatefulWidget {
  const ListingsMarathiScreen({super.key});

  @override
  _ListingsMarathiScreenState createState() => _ListingsMarathiScreenState();
}

class _ListingsMarathiScreenState extends State<ListingsMarathiScreen> {
  bool _isEnglishSelected = true;

  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double paddingHorizontal = screenWidth * 0.05; // 5% padding

    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://example.com/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://example.com/user.jpg'),
              ),
              accountName: Text('User'),
              accountEmail: null,
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Marathi', style: TextStyle(fontSize: 18)),
                      Radio<bool>(
                        value: true,
                        groupValue: _isEnglishSelected,
                        onChanged: (value) {
                          setState(() {
                            _isEnglishSelected = value!;
                          });
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInMarathi(),
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('English', style: TextStyle(fontSize: 18)),
                      Radio<bool>(
                        value: false,
                        groupValue: _isEnglishSelected,
                        onChanged: (value) {
                          setState(() {
                            _isEnglishSelected = value!;
                          });
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignInEnglish(),
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _buildDrawerItem('माझं प्रोफाईल'),
            _buildDrawerItem('संपादन'),
            _buildDrawerItem('सामान्य प्रश्न'),
            _buildDrawerItem('नियम आणि अटी'),
            _buildDrawerItem('NSS PESMCOE'),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout', style: TextStyle(fontSize: 18)),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LanguageScreen(),
                  ),
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Header(),
          Container(
            height: screenHeight * 0.05, // 6% of screen height
            color: const Color(0xFFB2FFB7),
            padding: EdgeInsets.symmetric(horizontal: paddingHorizontal / 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: screenHeight * 0.03), // 3% of screen height
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
                        // Add your onTap action here
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
                        // Add your onTap action here
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
                    // Add more CustomCard widgets as needed
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildDrawerItem(String title) {
    return ListTile(
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
