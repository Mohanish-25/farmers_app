import 'package:farmers_app/Screens/details_maandhan_english.dart';
import 'package:farmers_app/Screens/pm_creditcard_eng.dart';
import 'package:flutter/material.dart';
import 'package:farmers_app/Screens/details_samman_english.dart';
import 'package:farmers_app/Screens/select_language.dart';
import 'package:farmers_app/Screens/signin_english.dart';
import 'package:farmers_app/Screens/signin_mar.dart';
import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Componets/custom_card.dart';

class ListingsEnglishScreen extends StatefulWidget {
  const ListingsEnglishScreen({super.key});

  @override
  _ListingsEnglishScreenState createState() => _ListingsEnglishScreenState();
}

class _ListingsEnglishScreenState extends State<ListingsEnglishScreen> {
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
                        value: false,
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
                        value: true,
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
            _buildDrawerItem('My Profile'),
            _buildDrawerItem('Documents'),
            _buildDrawerItem('FAQ'),
            _buildDrawerItem('Terms & Conditions'),
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
                      title: 'Pradhan Mantri Kisan MaanDhan Yojana',
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
                        // Add your onTap action here
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/PM_FasalBima.jpg',
                      title: 'Pradhan Mantri Fasal Bima Yojana',
                      onTap: () {
                        // Add your onTap action here
                      },
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    CustomCard(
                      imagePath: 'assets/images/Soil_HealthCard.jpg',
                      title: 'Soil Health Card Scheme',
                      onTap: () {
                        // Add your onTap action here
                      },
                    ),
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
