/*Ausgabe aller Elemente einer Liste
Schreibe eine For-Each-Schleife, die alle Elemente einer Liste von Zahlen ausgibt.*/

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  
  
  numbers.forEach((zahl) {
    print(zahl);
  });
}
