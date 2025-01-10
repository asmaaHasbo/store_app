import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/shared_widgets/list_view_of_products.dart';

import '../../models/product_model.dart';
import '../themes/colors.dart';

class GetProductsFromDB extends StatelessWidget {
  final CollectionReference collectionName;
  final String screenName;
  final Function(double) onTotalPriceCalculated;
  const GetProductsFromDB({
    super.key,
    required this.collectionName,
    required this.screenName,
    required this.onTotalPriceCalculated,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: collectionName.snapshots(),
      builder: (context, snapshot) {

        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error: ${snapshot.error}',
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text('No products available'),
          );
        }
          if (snapshot.hasData) {
            try {
              final List<ProductModel> productModelList = [];
              final List<String> sizes = [];
              double totalPrice = 0.0;
              List<QueryDocumentSnapshot> collectionData = snapshot.data!.docs;

              for (var doc in collectionData ) {
                if (screenName == 'orders') {
                  sizes.add(doc['size']);
                  totalPrice  += doc['price'];
                }
                productModelList.add(ProductModel.fromJson(doc));
              }
              onTotalPriceCalculated(totalPrice);
              return ListViewOfProducts(
                productModelList: productModelList,
                screenName: screenName,
                sizesList: sizes,
                // docsIdList: docsIdList,
                // collectionName: collectionName,
              );
            } on Exception catch (e) {
              print(e);
              return Center(
                child: Text(
                  'Error processing data: $e',
                  style: const TextStyle(color: Colors.red),
                ),
              );
            }
          }

          else {
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
