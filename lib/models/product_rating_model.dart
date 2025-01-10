class ProductRatingModel {
  final double rating;
  final int count;

  ProductRatingModel({
    required this.rating,
    required this.count,
  });

  factory ProductRatingModel.fromJson(json){
    return ProductRatingModel(
        rating: (json['rate'] as num).toDouble(),
        count: json['count'] as int,);
  }
}
