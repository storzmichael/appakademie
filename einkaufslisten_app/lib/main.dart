import 'package:einkaufslisten_app/config.dart';
import 'package:einkaufslisten_app/models/shopping_item_model.dart';
import 'package:einkaufslisten_app/screens/add_shopping_item_screen.dart';
import 'package:einkaufslisten_app/screens/shopping_item_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Configuration(
      shoppingList: [
        ShoppingItem(name: 'Brot', done: false),
        ShoppingItem(name: 'Bier', done: false),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => ShoppingItemListScreen(),
          '/add': (context) => AddShoppingItemScreen(),
        },
      ),
    );
  }
}
