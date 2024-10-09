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
