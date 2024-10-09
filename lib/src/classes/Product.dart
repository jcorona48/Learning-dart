class Product {
  int id;
  String name;
  num price;
  String description;
  String image;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
  });

   static fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['title'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
    );
  }
}