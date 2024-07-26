import 'package:einkaufslisten_app/config.dart';
import 'package:einkaufslisten_app/models/shopping_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ShoppingItemListScreen extends StatefulWidget {
  const ShoppingItemListScreen({super.key});

  @override
  State<ShoppingItemListScreen> createState() => _ShoppingItemListScreenState();
}

class _ShoppingItemListScreenState extends State<ShoppingItemListScreen> {
  void _showSnackBar(BuildContext context, String text) {
    final messenger = ScaffoldMessenger.of(context);
    messenger.hideCurrentSnackBar();
    messenger.showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    final config = Configuration.of(context);
    final shoppingList = config?.shoppingList ?? [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'My Shopping List',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: shoppingList.length,
        itemBuilder: (context, index) {
          final item = shoppingList[index];

          return Slidable(
            key: ValueKey(shoppingList[index]),
            endActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {
                    Navigator.pushNamed(context, '/add', arguments: item).then(
                      (value) => setState(() {}),
                    );
                  },
                  backgroundColor: Colors.black45,
                  foregroundColor: Colors.white,
                  icon: Icons.edit,
                  label: 'Bearbeiten',
                ),
                SlidableAction(
                  onPressed: (context) {
                    setState(() {
                      shoppingList.removeAt(index);
                    });
                    _showSnackBar(context, '${item.name} gelöscht.');
                  },
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Löschen',
                ),
              ],
            ),
            child: CheckboxListTile(
              title: Text(item.name),
              value: item.done,
              onChanged: (newValue) {
                setState(() {
                  item.setDone(newValue!);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/add', arguments: ShoppingItem(name: '', done: false)).then(
            (value) => setState(() {}),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
