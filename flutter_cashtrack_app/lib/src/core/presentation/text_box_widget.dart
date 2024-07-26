import 'package:flutter/material.dart';

class TextBoxWidget extends StatefulWidget {
  const TextBoxWidget({super.key});

  @override
  State<TextBoxWidget> createState() => _TextflieldBigState();
}

class _TextflieldBigState extends State<TextBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: const Row(
          children: [
            SizedBox(
              width: 8,
            ),
            Icon(Icons.lock),
            SizedBox(
              width: 8,
            ),
            Text(
              'Password',
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
