import 'utils/utils.dart' show printDivider, printTitle, calculateAge; // Import file utils.dart
import 'classes/Person.dart' show Person; // Import class Person from file Person.dart
import 'config/config.dart' show env; // Import variable apiKey from file config.dart

void printDocumentation() {
  printTitle('Dart Basic Syntax');
  printDivider();
  variableDeclaration();
  objectDeclaration();
  conditionalStatement(10, 20);
  conditionalStatement(20, 10);
  loopStatement();
  listDeclaration();
  mapDeclaration();
  usingDependencies();
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

void conditionalStatement(int num1, int num2) {
  printTitle('Conditional Statement');
  if (num1 > num2) {
    print('Number 1 is greater than Number 2');
  } else {
    print('Number 1 is less than Number 2');
  }
  printDivider();
}

void loopStatement() {
  printTitle('Loop Statement');
  for (int i = 0; i < 5; i++) {
    print('Index: ${i+1}');
  }
  printDivider();
}

void listDeclaration() {
  printTitle('List Declaration');
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print('Number: ${number}');
  }
  printDivider();
}

void mapDeclaration() {
  printTitle('Map Declaration');
  Map<String, Object> author = {
    'name': 'Joan',
    'lastname': 'Corona',
    'age': calculateAge(2003),
  };
  print('Author: ${author}');
  printDivider();
}

void usingDependencies() {
  printTitle('Using Dependencies');
  print('Example Text: ${env['TEST_MESSAGE']}');
  printDivider();
}

/* Notes: 
Why can't use class into function?
Because the class is a global declaration, it can be used in any function.
*/

