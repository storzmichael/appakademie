import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  final String name;
  final int quantity;
  final double price;

  Product({
    required this.name,
    required this.quantity,
    required this.price,
  });
}

class ListViewProduct extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Cola', quantity: 2, price: 6.00),
    Product(name: 'A-Schorle', quantity: 1, price: 3.50),
    Product(name: 'Sekt', quantity: 3, price: 7.50),
    Product(name: 'Wasser', quantity: 1, price: 2.50),
    Product(name: 'Weiswein', quantity: 5, price: 10.00),
    Product(name: 'Med Wasser', quantity: 3, price: 7.50),
    Product(name: 'Med Wasser', quantity: 3, price: 7.50),
    Product(name: 'Med Wasser', quantity: 3, price: 7.50),
    Product(name: 'Med Wasser', quantity: 3, price: 7.50),
  ];

  ListViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: const BoxDecoration(
            color: CupertinoColors.systemGrey5,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            border: Border(
              bottom: BorderSide(width: 1.0, color: CupertinoColors.systemGrey4), // Unterstrich unter "Ausstehend"
            ),
          ),
          child: const Center(
            child: Text(
              'Ausstehend',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: CupertinoColors.systemGrey5, // Hintergrundfarbe der ListView
            child: ListView.separated(
              itemCount: products.length,
              separatorBuilder: (context, index) =>
                  const Divider(color: CupertinoColors.systemGrey4), // Unterstrich zwischen den Elementen
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0), // Reduziertes vertikales Padding
                  child: GestureDetector(
                    onTap: () {
                      // Handle onTap action here
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center, // Widgets innerhalb der Zeile zentrieren

                      children: [
                        Container(
                          width: 50,
                          alignment: Alignment.center,
                          child: Text(
                            '${products[index].quantity}',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Text(products[index].name),
                        ),
                        Container(
                          width: 100,
                          alignment: Alignment.centerRight,
                          child: Text(
                            '${products[index].price.toStringAsFixed(2)} €',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
