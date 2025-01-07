import 'package:flutter/material.dart';

class IllustrationSection extends StatelessWidget {
  final String? imagePath;
  final String? mainTitle;
  final String? subtitle;
  final String? description;

  const IllustrationSection({
    Key? key,
    this.imagePath =
        'https://dashboard.codeparrot.ai/api/assets/Z3uNNEjX1HzWCCfV',
    this.mainTitle = 'Kisano ko',
    this.subtitle = 'Saath Jode',
    this.description = 'Aadhik Vikas ki Aur Badhe!',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 163,
              height: 123,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Image.network(
                  imagePath!,
                  width: 128,
                  height: 110,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainTitle!,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 42,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.15,
                  height: 1.2,
                  color: Color(0xFF12723D),
                ),
              ),
              Text(
                subtitle!,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.15,
                  height: 1.2,
                  color: Color(0xFFFF7D24),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            description!,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.15,
              height: 1.82, // 40px line height / 22px font size
              color: Color(0xFF2C2E35),
            ),
          ),
        ],
      ),
    );
  }
}
