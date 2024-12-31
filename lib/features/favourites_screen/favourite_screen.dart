import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/firebase_functions/stream_bulider_for_get_prodects.dart';
import 'package:store_app/core/themes/colors.dart';
import 'package:store_app/features/favourites_screen/widgets/list_tile_of_products.dart';
import 'package:store_app/models/product_model.dart';

class FavouritesScreen extends StatelessWidget {
  FavouritesScreen({super.key, this.productModel});

  ProductModel? productModel;

  CollectionReference favouriteProducts =
      FirebaseFirestore.instance.collection('favouriteProducts');

  @override
  Widget build(BuildContext context) {
    return StreamBuilderForGetProducts(collectionName: favouriteProducts);
  }
}
