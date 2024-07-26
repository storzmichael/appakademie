import 'package:flutter/material.dart';
import 'package:flutter_cashtrack_app/src/core/data/text_varibals.dart';

class ButtonOrange extends StatefulWidget {
  final String initialText;
  final double initialHeight;
  final double initialPadding;

  ButtonOrange({
    required this.initialText,
    required this.initialHeight,
    required this.initialPadding,
  });

  @override
  _ButtonOrangeState createState() => _ButtonOrangeState();
}

class _ButtonOrangeState extends State<ButtonOrange> {
  late String buttonText;
  late double buttonHeight;
  late double initialPadding;

  @override
  void initState() {
    super.initState();
    buttonText = widget.initialText;
    buttonHeight = widget.initialHeight;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, buttonHeight),
        backgroundColor: const Color(0xFFF67600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonHeight / 2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: bttnFontSize3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
