void main() {
  print('Hello, Dart!');
  variableDeclaration();
}

void variableDeclaration() {
  int? num1; // Variable declaration, allow null
  int num2 = 5; // Variable declaration, not allow null
  const int num3 = 20;
  print('Number 1: ${num1}');
  print('Number 2: ${num2}');
  print('Number 3: ${num3}');
  num1 = 10;
  //num3 = 30; // ❌ Error: Constant variables can't be assigned a value.
  print('Number 1 (Rewrite): ${num1}');
}