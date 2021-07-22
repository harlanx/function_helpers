class Product {
  int id;
  String name;
  String brand;
  double price;
  double oldPrice;
  double? discount;
  double rating;
  int remaining;
  int sold;
  List<String>? images;
  List<String>? tags;

  Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    this.oldPrice = 0.0,
    this.discount,
    this.rating = 0.0,
    this.remaining = 1,
    this.sold = 10,
    this.images,
    this.tags,
  });

  double get discountedPrice {
    if (discount == null) {
      throw UnimplementedError('Cannot compute discounted price without the discount value provided');
    } else {
      if (discount! < 1 && discount! > 100) {
        throw RangeError.range(discount!, 1, 100, 'Discount must be in range between 1 to 100 only');
      }
      return double.parse((price - (price * (discount! / 100))).toStringAsFixed(2));
    }
  }
}
