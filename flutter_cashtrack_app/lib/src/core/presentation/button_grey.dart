import 'package:flutter/material.dart';

class ButtonGrey extends StatefulWidget {
  final String initialText;
  final double initialHeight;
  final double initialPadding;

  ButtonGrey({
    required this.initialText,
    required this.initialHeight,
    required this.initialPadding,
  });

  @override
  _ButtonGreyState createState() => _ButtonGreyState();
}

class _ButtonGreyState extends State<ButtonGrey> {
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
        backgroundColor: const Color.fromARGB(255, 207, 206, 206),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
              color: Color.fromARGB(255, 146, 146, 146), width: 1.5), // Border-Farbe und -Breite festlegen
        ),
      ),
      child: Text(buttonText),
    );
  }
}
