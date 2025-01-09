import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Buttons extends StatelessWidget {
  final String urlApply;
  final String textApply;
  final String urlTutorial;
  final String textTutorial;
  const Buttons(
      {super.key,
      required this.urlApply,
      required this.textApply,
      required this.urlTutorial,
      required this.textTutorial});

  static Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () => _launchUrl(urlApply),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2B9846),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              side: const BorderSide(color: Color(0xFF2B9846)),
            ),
            child: Text(
              textApply,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins-Semibold'),
            ),
          ),
          ElevatedButton(
            onPressed: () => _launchUrl(urlTutorial),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(229, 57, 53, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              side: const BorderSide(color: Color.fromRGBO(229, 57, 53, 1)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(Icons.play_arrow, color: Colors.white),
                SizedBox(width: screenWidth * 0.02),
                Text(
                  textTutorial,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Poppins-Semibold'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
