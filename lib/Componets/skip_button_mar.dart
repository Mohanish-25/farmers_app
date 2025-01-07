import 'package:flutter/material.dart';

class SkipMarathiButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;

  const SkipMarathiButton({
    super.key,
    this.onPressed,
    this.text = 'स्किप',
    this.fontSize = 16,
    this.textColor = const Color(0xFF2C2E35),
    this.fontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 24,
      margin: const EdgeInsets.only(right: 16.0),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor,
            height: 1.5, // 24/16
          ),
        ),
      ),
    );
  }
}
