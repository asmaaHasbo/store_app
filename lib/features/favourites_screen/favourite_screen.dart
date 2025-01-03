import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/firebase_functions/get_products_from_db.dart';
import 'package:store_app/core/shared_widgets/app_bar.dart';

class FavouritesScreen extends StatelessWidget {
  FavouritesScreen({super.key});

  CollectionReference favouriteProducts =
      FirebaseFirestore.instance.collection('favouriteProducts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Favourites'),
      body: GetProductsFromDB(collectionName: favouriteProducts, screenName: 'favourites',),
    );
  }
}
