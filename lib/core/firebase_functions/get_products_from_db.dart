import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/shared_widgets/list_view_of_products.dart';

import '../../models/product_model.dart';
import '../themes/colors.dart';

class GetProductsFromDB extends StatelessWidget {
  GetProductsFromDB(
      {super.key,
        required this.collectionName,
        required this.screenName ,
      required this.receiveTotalPrice
      });
  CollectionReference collectionName;
  String screenName;
  Function(double) receiveTotalPrice;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: collectionName.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProductModel> productModelList = [];
          List<QueryDocumentSnapshot> collectionData = snapshot.data!.docs;
          List<String> sizes = [];
          double totalPrice = 0;
          for (int i = 0; i < collectionData.length; i++) {

            if (screenName == 'orders') {
              sizes.add(collectionData[i]['size']);
              totalPrice = totalPrice + collectionData[i]['price'];
            }
            productModelList.add(ProductModel.fromJson(collectionData[i]));
          }
          receiveTotalPrice(totalPrice);
          return ListViewOfProducts(
            productModelList: productModelList,
            screenName: screenName,
            sizesList: sizes,
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
