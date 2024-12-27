import 'package:flutter/material.dart';
import 'package:store_app/features/products_screen/widgets/product_img.dart';
import 'package:store_app/models/product_model.dart';
import 'container_of_data.dart';

class CustomStack extends StatelessWidget {
  CustomStack({super.key, required this.productModel});

  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ContainerOfProductData(
          productModel: productModel,
        ),
        ProductImg(
          productModel: productModel,
        ),
      ],
    );
  }
}
