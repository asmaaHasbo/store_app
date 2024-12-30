import 'package:flutter/material.dart';

import 'package:store_app/models/product_model.dart';

class ProductImg extends StatelessWidget {
  const ProductImg({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      productModel.imageUrl!,
      height: 200,
    );
  }
}
