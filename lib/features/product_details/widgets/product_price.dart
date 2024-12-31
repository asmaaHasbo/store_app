import 'package:flutter/material.dart';

import 'package:store_app/models/product_model.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${productModel.price!}',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
