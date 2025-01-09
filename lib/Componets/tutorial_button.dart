import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TutorialButton extends StatelessWidget {
  final String url;

  final String text;
  const TutorialButton({super.key, required this.url, required this.text});

  static Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () => _launchUrl(url),
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
          SizedBox(width: screenSize.width * 0.02),
          Text(
            text,
            style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Poppins-Semibold'),
          ),
        ],
      ),
    );
  }
}
