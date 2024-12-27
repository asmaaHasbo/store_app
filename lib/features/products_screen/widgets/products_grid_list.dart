import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'custom_stack.dart';

class ProductsGridList extends StatelessWidget {
  ProductsGridList({super.key, required this.productModelList});

  List<ProductModel> productModelList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
      child: GridView.builder(
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 60,
        ),
        itemCount: productModelList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomStack(
            productModel: productModelList[index],
          );
        },
      ),
    );
  }
}
