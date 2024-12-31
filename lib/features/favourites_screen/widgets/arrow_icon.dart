import 'package:flutter/material.dart';

import '../../../core/shared_widgets/navigator_function.dart';
import '../../../models/product_model.dart';
import '../../product_details/product_details_screen.dart';
class ArrowIcon extends StatelessWidget {
  const ArrowIcon({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        navigatorFunction(context,
            ProductDetailsScreen(productModel: productModel));
      },
      icon: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 16,
      ),
    );
  }
}
