import 'package:flutter/material.dart';

class TextAppbar extends StatelessWidget {
  final String text;
  TextAppbar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white),
    );
  }
}
