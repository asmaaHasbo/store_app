import 'package:flutter/material.dart';

import 'package:store_app/models/product_model.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Text(
        productModel.title!,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
