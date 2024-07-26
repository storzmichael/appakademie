import 'package:flutter/material.dart';
import 'package:flutter_cashtrack_app/src/core/data/text_varibals.dart';
import 'package:flutter_cashtrack_app/src/features/order/button_varibals.dart';

class ButtonCategoryCustom extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  const ButtonCategoryCustom({
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF4F7B5B),
    this.textColor = Colors.white,
    this.borderRadius = borderRadiusSmallButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      width: 100.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          minimumSize: const Size(100.0, 40.0), // Festlegen der festen Größe
          padding: EdgeInsets.all(5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: bttnFontSize3,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
