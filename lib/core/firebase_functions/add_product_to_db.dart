import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:store_app/models/product_model.dart';

void addProductToDB({
  required ProductModel productModel,
  required CollectionReference collectionName,
}) {
  collectionName
      .add({
        "id": productModel.id!,
        "title": productModel.title!,
        "image": productModel.imageUrl!,
        "description": productModel.description!,
        "category": productModel.category!,
        "price": productModel.price!,
        "rating": {
          "rate": productModel.rating!.rating,
          "count": productModel.rating!.count,
        },
      })
      .then((value) => print("product Added"))
      .catchError((error) => print("Failed to add product: $error"));
}
