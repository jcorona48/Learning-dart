import 'package:http/http.dart' as http;
import '../config/config.dart' show Config;
import 'dart:convert';
import '../classes/Product.dart' show Product; // Import the Product class


Future<Product?> fetch({String urlPath = ''}) async { //Return a Product object 
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
