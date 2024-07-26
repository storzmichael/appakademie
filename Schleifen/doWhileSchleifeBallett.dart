void main() {
  int i = 1;
  int speed = 2;

  do {
    print('$i. Drehung');
    i++;
    speed += 2;
  } while (speed <= 30);
}
