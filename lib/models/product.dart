class Product {
  String name;

  String brand;
  double price;
  double oldPrice;
  ProductType productType;
  String? image;

  Product({
    required this.name,
    required this.brand,
    required this.price,
    this.oldPrice = 0.0,
    this.productType = ProductType.unknown,
    this.image,
  });
}

enum ProductType {
  unknown,
  food,
  drink,
  dishwash,
  detergent,
  utensil,
  hygiene,
}
