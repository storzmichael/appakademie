import 'package:flutter/material.dart';
import 'package:flutter_cashtrack_app/src/core/presentation/monitor_text.dart';

class ProductInMonitor extends StatelessWidget {
  const ProductInMonitor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(
            width: 25,
            child: MonitorText(
              text: '1x',
            ),
          ),
          Expanded(
            child: SizedBox(
              child: MonitorText(text: 'Cola'),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 80,
            child: MonitorText(text: '2,50 €'),
          ),
        ],
      ),
    );
  }
}
