import 'package:flutter/cupertino.dart';
import 'package:flutter_cashtrack_app/src/core/presentation/button_orange.dart';
import 'package:flutter_cashtrack_app/src/core/presentation/monitor_small_widget.dart';
import 'package:flutter_cashtrack_app/src/core/presentation/monitor_widget.dart';
import 'package:flutter_cashtrack_app/src/features/cash_in/presentation/list_view_products.dart';

class CashScreen extends StatelessWidget {
  const CashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(CupertinoIcons.back),
            onPressed: () {},
          ),
          middle: const Text('Cash screen'),
          trailing: CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(CupertinoIcons.settings),
            onPressed: () {},
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(child: MonitorWidget()),
              const SizedBox(
                height: 8,
              ),
              const MonitorSmallWidget(
                heightMonitor: 40,
              ),
              const SizedBox(
                height: 32,
              ),
              ButtonOrange(initialText: 'Bezahlen', initialHeight: 40, initialPadding: 16),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: ListViewProduct(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
