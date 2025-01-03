

import "package:cloud_firestore/cloud_firestore.dart";
import "package:store_app/core/firebase_functions/add_products_to_db.dart";
import 'package:store_app/models/product_model.dart';

CollectionReference orderProducts =
FirebaseFirestore.instance.collection('orderProducts');

void addProductToOrderColl({required ProductModel productModel, required size}) {
  return addProductToDB(productModel: productModel ,
    collectionName: orderProducts,
    size: size
  );
}