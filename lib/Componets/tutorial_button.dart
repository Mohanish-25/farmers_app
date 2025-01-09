import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TutorialButton extends StatelessWidget {
  final String url;

  const TutorialButton({super.key, required this.url});

  static Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => _launchUrl(url),
      icon: const Icon(
        Icons.play_circle_fill,
        color: Colors.red,
      ),
      label: const Text('Tutorial'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
