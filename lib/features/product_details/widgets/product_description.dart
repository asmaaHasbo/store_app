import 'package:flutter/material.dart';

import 'package:store_app/models/product_model.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      productModel.description!,
      style: const TextStyle(
        fontSize: 14.5,
        color: Colors.grey,
      ),
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }
}
