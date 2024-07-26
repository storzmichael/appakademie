/*Gib die ersten 10 Quadratzahlen aus
Schreibe eine For-Schleife, die die ersten 10 Quadratzahlen (1, 4, 9, ..., 100)
berechnet und ausgibt.*/

void main() {

  for (int i = 1; i <= 10; i++){
    int resault = i * i; 
    print('Quadartzahl von $i ist $resault');
  }
}