import 'package:flutter/cupertino.dart';
import 'package:flutter_cashtrack_app/src/features/order/presentation/button_product_custom.dart';

class ProductButtonRow extends StatelessWidget {
  final String button1;
  final String button2;
  final String button3;
  final String button4;
  final void Function(String) onButtonPressed;

  const ProductButtonRow({
    required this.button1,
    required this.button2,
    required this.button3,
    required this.button4,
    required this.onButtonPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonProductCustom(
          text: button1,
          onPressed: () => onButtonPressed(button1),
        ),
        ButtonProductCustom(
          text: button2,
          onPressed: () => onButtonPressed(button2),
        ),
        ButtonProductCustom(
          text: button3,
          onPressed: () => onButtonPressed(button3),
        ),
        ButtonProductCustom(
          text: button4,
          onPressed: () => onButtonPressed(button4),
        ),
      ],
    );
  }
}
