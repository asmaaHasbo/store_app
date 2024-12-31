import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/firebase_functions/stream_bulider_for_get_prodects.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/core/themes/styles.dart';

class FavouritesScreen extends StatelessWidget {
  FavouritesScreen({super.key, this.productModel});

  ProductModel? productModel;

  CollectionReference favouriteProducts =
      FirebaseFirestore.instance.collection('favouriteProducts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Favourites',
            style: Styles.textStyle45,
          ),
        ),
      ),
      body: StreamBuilderForGetProducts(collectionName: favouriteProducts),
    );
  }
}
