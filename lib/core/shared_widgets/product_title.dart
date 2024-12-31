import 'package:flutter/material.dart';

import '../../models/product_model.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${productModel.title?.substring(0, 10)}...',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
    );
  }
}
