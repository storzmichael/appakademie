import 'package:einkaufslisten_app/config.dart';
import 'package:einkaufslisten_app/models/shopping_item_model.dart';
import 'package:einkaufslisten_app/models/text_app_bar.dart';

import 'package:flutter/material.dart';

class AddShoppingItemScreen extends StatefulWidget {
  const AddShoppingItemScreen({super.key});

  @override
  State<AddShoppingItemScreen> createState() => _AddShoppingItemScreenState();
}

class _AddShoppingItemScreenState extends State<AddShoppingItemScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final shoppingList = context.dependOnInheritedWidgetOfExactType<Configuration>()!.shoppingList;

    final editedShoppingItem = ModalRoute.of(context)!.settings.arguments as ShoppingItem;

    bool inEditMode = editedShoppingItem.name.isNotEmpty;

    if (inEditMode) {
      _textEditingController.text = editedShoppingItem.name;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: TextAppbar(text: inEditMode ? 'Edit Item' : 'Add Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'Item Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              ),
              onPressed: () {
                if (inEditMode) {
                  ShoppingItem newShoppingItem = editedShoppingItem.copyWith(name: _textEditingController.text);
                  int indexOfEditedItem = shoppingList.indexOf(editedShoppingItem);
                  shoppingList[indexOfEditedItem] = newShoppingItem;
                } else {
                  shoppingList.add(ShoppingItem(name: _textEditingController.text, done: false));
                }

                Navigator.pop(context);
              },
              child: Text(
                inEditMode ? 'Update' : 'Add',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
