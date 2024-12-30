import 'package:flutter/material.dart';
import 'package:store_app/core/helper/get_all_product.dart';
import 'package:store_app/core/themes/colors.dart';
import 'package:store_app/features/products_screen/widgets/products_grid_list.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetAllProductService().getAllProduct(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ProductsGridList(
            productModelList: snapshot.data!,
          );
        } else {
          return  const Center(
            child: CircularProgressIndicator(color: AppColors.mainColor,)
          );
        }
      },
    );
  }
}
