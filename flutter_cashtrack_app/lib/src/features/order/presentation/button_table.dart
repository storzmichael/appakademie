import 'package:flutter/material.dart';

class ButtonTable extends StatefulWidget {
  final String initialText;
  final double initialHeight;

  final double initialWidth;

  ButtonTable({
    required this.initialText,
    required this.initialHeight,
    required this.initialWidth,
  });

  @override
  _ButtonTableState createState() => _ButtonTableState();
}

class _ButtonTableState extends State<ButtonTable> {
  late String buttonText;
  late double buttonHeight;
  late double buttonPadding;
  late double buttonWidth;

  @override
  void initState() {
    super.initState();
    buttonText = widget.initialText;
    buttonHeight = widget.initialHeight;

    buttonWidth = widget.initialWidth;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: Size(buttonWidth, buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonHeight / 2),
            side: const BorderSide(color: Color(0xFFF67600), width: 1.5), // Border-Farbe und -Breite festlegen
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
