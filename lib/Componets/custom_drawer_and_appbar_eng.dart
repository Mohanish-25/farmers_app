import 'package:flutter/material.dart';
import 'package:farmers_app/Screens/select_language.dart';
import 'package:farmers_app/Screens/signin/signin_eng.dart';
import 'package:farmers_app/Screens/signin/signin_mar.dart';
import 'package:farmers_app/Componets/header.dart';

class CustomDrawerAppBarEng extends StatefulWidget {
  final Function() onBackPressed;

  const CustomDrawerAppBarEng({
    Key? key,
    required this.onBackPressed,
  }) : super(key: key);

  // Modified static method
  static Widget buildDrawer(BuildContext context) {
    return _DrawerContentEng();
  }

  @override
  State<CustomDrawerAppBarEng> createState() => _CustomDrawerAppBarEngState();
}

class _CustomDrawerAppBarEngState extends State<CustomDrawerAppBarEng> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const Header(),
        Container(
          height: screenHeight * 0.05,
          color: const Color(0xFFB2FFB7),
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.0125),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: widget.onBackPressed,
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
      ],
    );
  }
}

class _DrawerContentEng extends StatefulWidget {
  @override
  _DrawerContentEngState createState() => _DrawerContentEngState();
}

class _DrawerContentEngState extends State<_DrawerContentEng> {
  bool _isEnglishSelected = true;

  Widget _buildDrawerItem(String title) {
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

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                          _isEnglishSelected = !value!;
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
          _buildDrawerItem('Edit'),
          _buildDrawerItem('FAQ'),
          _buildDrawerItem('Terms and Conditions'),
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
    );
  }
}