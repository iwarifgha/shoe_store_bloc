class Product {
  final String name;
  final Enum type;
  final String description;
  final String imageAddress;
  final String price;
  final String intelligence;
  final String size;
  final Enum dangerLevel;


  Product({
    required this.intelligence,
    required this.dangerLevel,
    required this.price,
    required this.name,
    required this.type,
    required this.description,
    required this.imageAddress,
    required this.size,

  });
}