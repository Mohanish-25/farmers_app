import 'package:farmers_app/Componets/header.dart';
import 'package:farmers_app/Screens/Details_samman_english.dart';
import 'package:flutter/material.dart';

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
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://example.com/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage('https://example.com/user.jpg'),
              ),
              accountName: const Text('User'),
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
                Navigator.pop(context);
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsSammanEnglish(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(
                              screenWidth * 0.03), // Scaled padding
                          child: Column(
                            children: [
                              const Text(
                                'Pradhan Mantri Kisan Samman Nidhi',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF2C2E35),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.015),
                              Image.network(
                                'https://dashboard.codeparrot.ai/api/assets/Z3upqnwdoACPgq5z',
                                width: screenWidth * 0.8, // 80% of screen width
                                height:
                                    screenHeight * 0.2, // 20% of screen height
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(screenWidth * 0.03),
                        child: Column(
                          children: [
                            const Text(
                              'Pradhan Mantri Kisan MaanDhan Yojana',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2C2E35),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.015),
                            Image.network(
                              'https://dashboard.codeparrot.ai/api/assets/Z3upqnwdoACPgq50',
                              width: screenWidth * 0.8,
                              height: screenHeight * 0.2,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
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
