import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter_cashtrack_app/src/core/data/text_varibals.dart';
import 'package:flutter_cashtrack_app/src/features/event/presentation/event_button.dart';
import 'package:flutter_cashtrack_app/src/features/order/button_varibals.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Cash screen'),
        ),
        child: Center(
          child: EventButton(
            icon: Icons.add,
            text: 'Neues Event',
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
