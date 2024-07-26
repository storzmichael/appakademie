import 'package:flutter/cupertino.dart';
import 'package:flutter_cashtrack_app/src/features/order/presentation/button_category_custom.dart';

class CategoryButtonListView extends StatelessWidget {
  final String button1;
  final String button2;
  final String button3;
  final String button4;

  const CategoryButtonListView({
    required this.button1,
    required this.button2,
    required this.button3,
    required this.button4,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 40, // Höhe der ListView
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ButtonCategoryCustom(text: button1, onPressed: () {}),
            const SizedBox(width: 8), // Abstand zwischen den Buttons
            ButtonCategoryCustom(text: button2, onPressed: () {}),
            const SizedBox(width: 8), // Abstand zwischen den Buttons
            ButtonCategoryCustom(text: button3, onPressed: () {}),
            const SizedBox(width: 8), // Abstand zwischen den Buttons
            ButtonCategoryCustom(text: button4, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
