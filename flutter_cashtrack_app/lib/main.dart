import 'package:flutter/material.dart';
import 'package:flutter_cashtrack_app/src/core/presentation/app_home.dart';
import 'package:flutter_cashtrack_app/src/features/cash_in/presentation/cash_screen.dart';
import 'package:flutter_cashtrack_app/test_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TestScreen());
  }
}
