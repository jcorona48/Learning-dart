import 'utils.dart' show printDivider, printTitle; // Import file utils.dart
void main() {
  printTitle('Dart Basic Syntax');
  printDivider();
  variableDeclaration();
  objectDeclaration();
}

// Function declaration
void variableDeclaration() {
  printTitle('Variable Declaration');
  int? num1; // Variable declaration, allow null
  int num2 = 5; // Variable declaration, not allow null
  const int num3 = 20;
  print('Number 1: ${num1}'); // ${} is used to print the value of a variable
  print('Number 2: ${num2}');
  print('Number 3: ${num3}');
  num1 = 10;
  //num3 = 30; // ❌ Error: Constant variables can't be assigned a value.
  print('Number 1 (Rewrite): ${num1}');
  printDivider();
}

void objectDeclaration() {
  printTitle('Object Declaration');
  Person person = Person(name: 'John', age: 25);
  person.showInfo();
  printDivider();
}

// Class declaration
class Person {
  String? name;
  int? age;

  // Constructor
  Person({this.name, this.age}) {
    print('Person object created');
  }

  // Method
  void showInfo() {
    print('Person: ${name} - ${age}');
  }
}

/* Notes: 
Why can't use class into function?
Because the class is a global declaration, it can be used in any function.
*/

