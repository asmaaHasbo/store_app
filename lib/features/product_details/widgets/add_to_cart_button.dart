import "package:flutter/material.dart";
import "package:store_app/models/product_model.dart";
import 'package:store_app/features/product_details/logic/add_product_to_order_coll.dart';

ElevatedButton addToCartButton({required ProductModel productModel ,required size}) {
  return ElevatedButton(
    onPressed: () {
      addProductToOrderColl( productModel: productModel, size: size);
      print( 'db' +  size);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      fixedSize: const Size(140, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: const Text(
      'Add To Cart',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    ),
  );
}
