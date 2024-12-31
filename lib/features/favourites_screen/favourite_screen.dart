import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/themes/colors.dart';
import 'package:store_app/features/favourites_screen/widgets/list_of_fav_product.dart';
import 'package:store_app/models/product_model.dart';

class FavouritesScreen extends StatelessWidget {
      FavouritesScreen({super.key, this.productModel});

  ProductModel? productModel;

  CollectionReference favouriteProducts =
      FirebaseFirestore.instance.collection('favouriteProducts');

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: favouriteProducts.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> productModel = [];
          List<QueryDocumentSnapshot>? collectionData = snapshot.data!.docs;
          for (int i = 0; i < collectionData.length; i++) {
            productModel.add(ProductModel.fromJson(collectionData[i]));
          }
          return ListOfFavProduct(
            productModelList: productModel,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.mainColor,
            ),
          );
        }
      },
    );
  }
}
