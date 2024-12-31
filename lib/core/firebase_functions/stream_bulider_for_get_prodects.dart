import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../features/favourites_screen/widgets/list_tile_of_products.dart';
import '../../models/product_model.dart';
import '../themes/colors.dart';

class StreamBuilderForGetProducts extends StatelessWidget {
  StreamBuilderForGetProducts({super.key, required this.collectionName});
  CollectionReference collectionName;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: collectionName.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> productModel = [];
          List<QueryDocumentSnapshot>? collectionData = snapshot.data!.docs;
          for (int i = 0; i < collectionData.length; i++) {
            productModel.add(ProductModel.fromJson(collectionData[i]));
          }
          return ListTileOfProducts(
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
