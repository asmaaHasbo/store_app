import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/features/favourites_screen/widgets/list_tile_of_products.dart';

import '../../../core/helper/get_all_product.dart';
import '../../../core/themes/colors.dart';

class SearchResult extends StatelessWidget {
  SearchResult({super.key, required this.searchValue});

  String searchValue;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: GetAllProductService().getAllProduct(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (searchValue.isEmpty) {
              return ListTileOfProducts(productModelList: snapshot.data!);
            } else {
              List<ProductModel> productModelList = [];

              for (int i = 0; i < snapshot.data!.length; i++) {
                if (snapshot.data![i].title
                    .toString()
                    .toLowerCase()
                    .startsWith(searchValue.toLowerCase())) {
                  productModelList.add(snapshot.data![i]);
                }
              }
              if (productModelList.isEmpty) {
                return const Center(
                    child: Text('Not Found', style: TextStyle(fontSize: 18)));
              } else {
                return ListTileOfProducts(productModelList: productModelList);
              }
            }
          } else {
            return const Center(
                child: CircularProgressIndicator(
              color: AppColors.mainColor,
            ));
          }
        },
      ),
    );
  }
}
