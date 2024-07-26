import 'package:flutter/material.dart';
import 'package:flutter_cashtrack_app/src/core/data/text_varibals.dart';

class MonitorText extends StatelessWidget {
  final String text;
  MonitorText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: bttnFontSize4, fontWeight: FontWeight.bold, fontFamily: fontFamily),
    );
  }
}
