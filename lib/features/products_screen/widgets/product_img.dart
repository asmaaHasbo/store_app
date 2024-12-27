import 'package:flutter/material.dart';

import 'package:store_app/models/product_model.dart';

class ProductImg extends StatelessWidget {
  ProductImg({super.key, required this.productModel});

  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 70,
      right: 20,
      child: Image.network(
        productModel.imageUrl!,
        height: 80,
        width: 90,
      ),
    );
  }
}
