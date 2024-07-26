import 'package:flutter/material.dart';
import 'package:flutter_cashtrack_app/src/core/data/text_varibals.dart';
import 'package:flutter_cashtrack_app/src/features/order/button_varibals.dart';

class ButtonProductCustom extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  const ButtonProductCustom({
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFFF67600),
    this.textColor = Colors.black,
    this.borderRadius = borderRadiusSmallButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      width: 80.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          minimumSize: const Size(80.0, 60.0),
          padding: EdgeInsets.all(5),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: bttnFontSize2,
            fontFamily: fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
