import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cashtrack_app/src/core/data/text_varibals.dart';
import 'package:flutter_cashtrack_app/src/features/event/data/event_data.dart';
import 'package:flutter_cashtrack_app/src/features/event/domain/event_button_item.dart';
import 'package:flutter_cashtrack_app/src/features/order/button_varibals.dart';

class EventButton extends StatelessWidget {
  final EventButtonItem;

  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  const EventButton({
    super.key,
    required this.EventButtonItem,
    this.backgroundColor = const Color(0xFFF67600),
    this.textColor = Colors.black,
    this.borderRadius = borderRadiusSmallButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.0,
      width: 140.0,
      child: ElevatedButton(
        onPressed: () {
          //TODO: einfügen, wenn screen gebaut ist
          /*Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(galleryItem: galleryItem), // show the selected card as detail
            ),
          );*/
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          minimumSize: const Size(140.0, 140.0), // Festlegen der festen Größe
          padding: const EdgeInsets.all(5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    buttons[0].bttnIcon,
                    color: Colors.black,
                    size: 48,
                  ),
                  Text(
                    buttons[0].bttnName,
                    style: TextStyle(
                      color: textColor,
                      fontSize: bttnFontSize4,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
