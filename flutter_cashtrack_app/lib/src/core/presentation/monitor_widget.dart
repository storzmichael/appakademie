import 'package:flutter/material.dart';
import 'package:flutter_cashtrack_app/src/features/cash_in/presentation/product_in_monitor.dart';

class MonitorWidget extends StatefulWidget {
  const MonitorWidget({super.key});

  @override
  MonitorWidgetState createState() => MonitorWidgetState();
}

class MonitorWidgetState extends State<MonitorWidget> {
  // Leere Liste für Produkte
  List<String> produktListe = [];

  // Funktion zum Hinzufügen eines Produkts zur Liste
  void produktHinzufuegen(String produktName) {
    setState(() {
      produktListe.add(produktName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 200, 200, 200),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ProductInMonitor(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(),
                ),
              ),
            ],
          ),
          // Anzeige der Produktliste
          Expanded(
            child: ListView.builder(
              itemCount: produktListe.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(produktListe[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
