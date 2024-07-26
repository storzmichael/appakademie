import 'dart:io';

void runQuiz(Map<String, Map<String, bool>> questionsAndAnswers) {
  int score = 0;

  print('Willkommen zum Quiz!\n');

  for (var entry in questionsAndAnswers.entries) {
    print('Frage: ${entry.key}');
    entry.value.forEach((option, isCorrect) {
      print(option);
    });

    stdout.write('Deine Antwort (z.B. A, B, C, D): ');
    String? userAnswer = stdin.readLineSync()?.toUpperCase();

    // Überprüfung der Antwort

    // Antwort wird noch nicht richtig erkannt!!!!!!!!

    if (userAnswer != null && entry.value.containsKey(userAnswer) && entry.value[userAnswer]!) {
      print('Richtig!\n');
      score++;
    } else {
      print('Falsch!\n');
    }
  }

  print('Du hast $score von ${questionsAndAnswers.length} Fragen richtig beantwortet.');
}

double calculateScope([double edgeLengthA = 10.0, double edgeLengthB = 40.0]) {
  return ((edgeLengthA * 2) + (edgeLengthB * 2));
}

double calculateSurface([double edgeLengthA = 10.0, double edgeLengthB = 40.0]) {
  return edgeLengthA * edgeLengthB;
}
