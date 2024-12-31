// import 'package:store_app/models/product_rating_model.dart';
//
// class ProductModelDb {
//   final int ? id;
//   final String ?title;
//   final double ?price;
//   final String ?description;
//   final String ?category;
//   final String ?imageUrl;
//   final double rating ;
//
//   ProductModel({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.category,
//     required this.imageUrl,
//     required this.rating,
//   });
//
//   factory ProductModel.fromJson(json) {
//     return ProductModel(
//       id: json['id']!,
//       title: json['title']!,
//       price: json['price']!,
//       description: json['description']!,
//       category: json['category']!,
//       imageUrl: json['image']!,
//       rating: ProductRatingModel.fromJson(json['rating']),
//     );
//   }
//
// }
