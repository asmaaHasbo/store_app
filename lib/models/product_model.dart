import 'package:store_app/models/product_rating_model.dart';

class ProductModel {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? imageUrl;
  // String size = 'XL';
  final ProductRatingModel? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageUrl,
    required this.rating,
  });

  factory ProductModel.fromJson(json) {
    return ProductModel(
      id: json['id']!,
      title: json['title']!,
      price: (json['price'] != null) ? (json['price'] as num).toDouble() : 0.0,
      description: json['description']!,
      category: json['category']!,
      imageUrl: json['image']!,
      rating: json['rating'] != null
          ? ProductRatingModel.fromJson(json['rating'])
          : null,
    );
  }
}
