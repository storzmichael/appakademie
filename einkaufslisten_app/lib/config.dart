import 'package:einkaufslisten_app/models/shopping_item_model.dart';
import 'package:flutter/material.dart';

class Configuration extends InheritedWidget {
  final List<ShoppingItem> shoppingList;

  const Configuration({
    required this.shoppingList,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(Configuration oldWidget) {
    return shoppingList != oldWidget.shoppingList;
  }

  static Configuration? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Configuration>();
  }
}
