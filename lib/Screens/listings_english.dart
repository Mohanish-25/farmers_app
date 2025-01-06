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
                      const Text(
                        'Marathi',
                        style: TextStyle(fontSize: 18),
                      ),
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
                      const Text(
                        'English',
                        style: TextStyle(fontSize: 18),
                      ),
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
              title: const Text(
                'Logout',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Handle Logout tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Header with logos and title
          const Header(),
          // Top Bar with back button and menu
          Container(
            height: 50,
            color: const Color(0xFFB2FFB7),
            padding: const EdgeInsets.symmetric(horizontal: 4),
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

          // Content
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
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
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              const Text(
                                'Pradhan Mantri Kisan Samman Nidhi',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF2C2E35),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Image.network(
                                'https://dashboard.codeparrot.ai/api/assets/Z3upqnwdoACPgq5z',
                                width: 309,
                                height: 174,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Text(
                              'Pradhan Mantri Kisan MaanDhan Yojana',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF2C2E35),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Image.network(
                              'https://dashboard.codeparrot.ai/api/assets/Z3upqnwdoACPgq50',
                              width: 309,
                              height: 166,
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
          border:
              Border.all(color: Colors.grey), // Optional: Add a border color
        ),
        child: Padding(
          padding: const EdgeInsets.all(
              8.0), // Optional: Add padding inside the border
          child: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
      onTap: () {
        // Handle item tap
      },
    );
  }
}
