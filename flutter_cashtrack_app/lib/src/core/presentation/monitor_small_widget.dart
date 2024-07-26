import 'package:flutter/material.dart';

class MonitorSmallWidget extends StatelessWidget {
  final double heightMonitor;
  const MonitorSmallWidget({required this.heightMonitor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // anzeige gesamt

      height: heightMonitor,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 200, 200, 200),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsetsDirectional.only(start: 8.0),
            child: const Text(
                style: TextStyle(
                  fontSize: 16,
                ),
                'Gesamt'),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(end: 8.0),
            child: const Text(style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), '0.00 €'),
          ),
        ],
      ),
    );
  }
}
