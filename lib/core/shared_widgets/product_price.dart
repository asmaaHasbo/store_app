import 'package:flutter/material.dart';

import '../../models/product_model.dart';
class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${productModel.price}',
      style: const TextStyle(
        fontSize: 17,
        color: Colors.grey,
      ),
    );
  }
}
