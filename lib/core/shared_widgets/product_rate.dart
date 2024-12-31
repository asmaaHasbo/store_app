import 'package:flutter/material.dart';

import 'package:store_app/models/product_model.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.orange,
          size: 16,
        ),
        Text('${productModel.rating?.rating}'),
      ],
    );
  }
}
