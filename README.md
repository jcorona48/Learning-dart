# Dart Basic Syntax Documentation By Joan Corona

This project demonstrates fundamental concepts of Dart, including variable declaration, object-oriented programming, conditional statements, loops, and collections (lists and maps). Additionally, it showcases how to work with dependencies and utilities in Dart.

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Features](#features)
  - [Variable Declaration](#variable-declaration)
  - [Object Declaration](#object-declaration)
  - [Conditional Statement](#conditional-statement)
  - [Loop Statement](#loop-statement)
  - [List Declaration](#list-declaration)
  - [Map Declaration](#map-declaration)
  - [Using Dependencies](#using-dependencies)
  - [Fetching Data](#fetch-example)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/jcorona48/Learning-dart.git
   cd Learning-dart
   ```

2. **Install the required dependencies:**
   Ensure you have [Dart SDK](https://dart.dev/get-dart) installed. Then run the following command to get the dependencies:
   ```bash
   dart pub get
   ```

## Usage

To run the project, simply use the Dart CLI to execute the `bin/main.dart` file:
```bash
dart run bin/main.dart
```

You will see output in the terminal based on the various Dart syntax demonstrations like variable declarations, object instantiations, conditional statements, loops, lists, maps, and external dependency usage.

## Project Structure

```
Learning-dart/
├── bin/
│   └── main.dart          # Main entry point of the program
├── lib/
│   ├── classes/
│   │   └── Person.dart     # Person class definition
│   ├── config/
│   │   └── config.dart     # Configuration for environment variables
│   ├── docs/
│   │   └── fetching-data.dart     # Function Fetching declaration
│   ├── utils/
│   |    └── utils.dart      # Utility functions (printDivider, printTitle, calculateAge)
|   └── docs.dart            # All Funtion Declaration
├── pubspec.yaml            # Dart project configuration file
└── .env                    # Environment variables (not included in the repo)
```

## Features

### Variable Declaration
This example demonstrates the declaration of variables in Dart, including nullable and constant variables.

```dart
int? num1;        // Nullable variable
int num2 = 5;     // Non-nullable variable
const int num3 = 20; // Constant variable
```

### Object Declaration
Dart uses object-oriented programming, and here we instantiate a `Person` object with the name and age fields.

```dart
Person person = Person(name: 'John', age: 25);
person.showInfo();
```

### Conditional Statement
A basic `if-else` statement is used to compare two numbers.

```dart
if (num1 > num2) {
  print('Number 1 is greater than Number 2');
} else {
  print('Number 1 is less than Number 2');
}
```

### Loop Statement
A simple `for` loop iterates through a range of numbers.

```dart
for (int i = 0; i < 5; i++) {
  print('Index: ${i + 1}');
}
```

### List Declaration
Dart's `List` collection is used to store and print numbers.

```dart
List<int> numbers = [1, 2, 3, 4, 5];
for (int number in numbers) {
  print('Number: $number');
}
```

### Map Declaration
A `Map` is used to store key-value pairs, and an age calculation function (`calculateAge`) is utilized.

```dart
Map<String, Object> author = {
  'name': 'Joan',
  'lastname': 'Corona',
  'age': calculateAge(2003),
};
```

### Using Dependencies
External dependencies (e.g., environment variables) are managed using a configuration file.

```dart
print('Example Text: ${Config.TEST_MESSAGE}');
```

### Fetch Example
This section illustrates how to fetch data from an API using the http package.

Code Overview
```dart
import 'package:http/http.dart' as http;
import '../config/config.dart' show Config;
import 'dart:convert';
import '../classes/Product.dart' show Product;

Future<Product?> fetch({String urlPath = ''}) async {
  try {
    final url = Uri.https(Config.API_BASE_URL, urlPath);
    final response = await http.get(url);
    final data = json.decode(response.body) as Map<String, dynamic>;
    return Product.fromJson(data);
  } catch (e) {
    print('Error: $e');
    return null;
  }
}

printFetch() async {
  final product = await fetch(urlPath: 'products/17');
  if (product != null) {
    print('ID: ${product.id}');
    print('Name: ${product.name}');
    print('Price: ${product.price}');
    print('Image: ${product.image}');
  }
}
```
Usage
To use the fetch function, ensure your API base URL is set in your configuration. Call printFetch to retrieve and display product details.

## Contributing

Feel free to submit issues, fork the repository, and create pull requests. Any contributions are highly appreciated!

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a pull request

## License

Distributed under the MIT License. See `LICENSE` for more information.

### Key Sections:

- **Installation**: Instructions on how to clone the repo and install dependencies.
- **Usage**: How to run the project.
- **Project Structure**: Overview of the project's folder and file structure.
- **Features**: Highlights of various Dart syntax features demonstrated in the code.
- **Contributing**: Guidelines for contributing to the project.
- **License**: A placeholder for the project’s license, typically MIT.
