import 'functions.dart';
import 'questionsForQuiz.dart';
import 'dart:io';

void main() {
  // Fragen und Antworten nach Kategorien gruppieren

  print('Wähle eine Kategorie aus:');
  var i = 97;
  categories.keys.forEach((category) => print('${String.fromCharCode(i++)}) $category'));

  stdout.write('Deine Auswahl: ');
  String? selectedCategory = stdin.readLineSync()?.toLowerCase();

  if (selectedCategory != null &&
      selectedCategory.codeUnitAt(0) >= 97 &&
      selectedCategory.codeUnitAt(0) < 97 + categories.length) {
    String category = categories.keys.elementAt(selectedCategory.codeUnitAt(0) - 97);
    runQuiz(categories[category]!);
  } else {
    print('Ungültige Auswahl.');
  }
}
