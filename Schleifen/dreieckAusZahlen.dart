/*Aufgabe 2: Dreieck aus Zahlen
Schreibe ein Dart-Programm, das ein rechtwinkliges Dreieck aus Zahlen auf der Konsole ausgibt. Die Anzahl der Zeilen soll 4 betragen.
*/
/*
void main(){
    List<String> value = [
    '1',
    '12',
    '123',
    '1234'  
  ];

  for (String numb in value){
    print(numb);
  }
}
*/
import 'dart:io';
void main() {
  int lines = 4;

  for (int i = 1; i <= lines; i++) {
    for (int output = 1; output <= i; output++) {
      stdout.write(output);
       
    }

    print('');
  }
}
