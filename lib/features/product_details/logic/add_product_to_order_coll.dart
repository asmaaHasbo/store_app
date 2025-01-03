
import "package:cloud_firestore/cloud_firestore.dart";
import "package:store_app/core/firebase_functions/add_product_to_db.dart";
import 'package:store_app/models/product_model.dart';

CollectionReference orderProducts =
FirebaseFirestore.instance.collection('orderProducts');

void addProductToOrderColl(ProductModel productModel) {
  return addProductToDB(productModel: productModel ,
    collectionName: orderProducts,
  );
}