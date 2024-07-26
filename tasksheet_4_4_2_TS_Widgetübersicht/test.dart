class MaterialApp {
  Scaffold home;
  MaterialApp({required this.home});
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

void main() {
  var myApp = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(text: 'Hallo'),
          ],
        ),
      ),
    ),
  );
}
