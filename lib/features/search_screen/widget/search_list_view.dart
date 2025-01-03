import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import '../../favourites_screen/widgets/custom_list_tile.dart';
class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
    required this.productModelList,
  });

  final List<ProductModel> productModelList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productModelList.length,
        itemBuilder: (context, index) {
          return CustomListTile(
              productModel: productModelList[index]);
        });
  }
}
