import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import '../../favourites_screen/widgets/custom_list_tile.dart';

class SearchListView extends StatelessWidget {
  SearchListView({
    super.key,
    required this.productModelList,
  });

  CollectionReference orderProducts =
      FirebaseFirestore.instance.collection('orderProducts');

  final List<ProductModel> productModelList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productModelList.length,
        itemBuilder: (context, index) {
          return CustomListTile(
            productModel: productModelList[index],
          );
        });
  }
}
