import 'dart:io';
void solveMeFirst(int a, int b) {
  int sum = a + b;
  print(sum);
}


void main() {
    int a = int.parse(stdin.readLineSync()!);
    int b = int.parse(stdin.readLineSync()!);
    solveMeFirst(a, b);
}