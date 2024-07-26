class MaterialApp {
  Scaffold screen;

  MaterialApp({required this.screen});
}

class Scaffold {
  Center body;
  Scaffold({required this.body});
}

class Center {
  Column child;
  Center({required this.child});
}

class Column {
  List<Text> children;
  Column({required this.children});
}

class Text {
  String text;
  Text({required this.text});
}

MaterialApp myApp = MaterialApp(
  screen: Scaffold(
    body: Center(
      child: Column(
        children: [
          Text(text: 'Hallo'),
        ],
      ),
    ),
  ),
);
