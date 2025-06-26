class ProductModel {
  final String? name;
  final String? subTitle;
  final String? description;
  final String? price;
  final String? originalPrice;
  final String? offer;
  final num? rating;
  final num? ratingCount;
  final String? imageUrl;
  ProductModel({
    this.name,
    this.subTitle,
    this.description,
    this.price,
    this.originalPrice,
    this.offer,
    this.rating,
    this.ratingCount,
    this.imageUrl,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
  return ProductModel(
    name: map['name'] as String?,
    subTitle: map['subtitle'] as String?,
    description: map['description'] as String?,
    price: map['price']?.toString(),
    originalPrice: map['original_price']?.toString(),
    offer: map['offer'] as String?,
   rating: map['rating'] is num ? map['rating'] as num : num.tryParse(map['rating']?.toString() ?? ''),
    ratingCount: map['rating_count'] is num ? map['rating_count'] as num : num.tryParse(map['rating_count']?.toString() ?? ''),
    imageUrl: map['image_url'] as String?,
  );
}

}
