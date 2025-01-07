import 'package:flutter/material.dart';
import 'package:farmers_app/Screens/select_language.dart';
import 'package:farmers_app/Screens/signin/signin_eng.dart';
import 'package:farmers_app/Screens/signin/signin_mar.dart';
import 'package:farmers_app/Componets/header.dart';

class CustomDrawerAppBar extends StatefulWidget {
  final Function() onBackPressed;

  const CustomDrawerAppBar({
    Key? key,
    required this.onBackPressed,
  }) : super(key: key);

  // Modified static method
  static Widget buildDrawer(BuildContext context) {
    return _DrawerContent();
  }

  @override
  State<CustomDrawerAppBar> createState() => _CustomDrawerAppBarState();
}

class _CustomDrawerAppBarState extends State<CustomDrawerAppBar> {
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

class _DrawerContent extends StatefulWidget {
  @override
  _DrawerContentState createState() => _DrawerContentState();
}

class _DrawerContentState extends State<_DrawerContent> {
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
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/drawer_background1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: Container(
              width: double.infinity,
              child: Center(
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Profile_Photo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            accountName: const Text('किसान', style: TextStyle(fontSize: 20)),
            accountEmail: null,
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('मराठी', style: TextStyle(fontSize: 18)),
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
                    const Text('इंग्रजी', style: TextStyle(fontSize: 18)),
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
    );
  }
}
