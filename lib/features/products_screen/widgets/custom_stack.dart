import 'package:flutter/material.dart';
import 'package:store_app/features/product_details/product_details_screen.dart';
import 'package:store_app/features/products_screen/widgets/product_stack_img.dart';
import 'package:store_app/models/product_model.dart';
import '../../../core/shared_widgets/navigator_function.dart';
import 'container_of_data.dart';

class CustomStack extends StatelessWidget {
  CustomStack({super.key, required this.productModel });
  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigatorFunction(context,  ProductDetailsScreen( productModel: productModel, screenName: '',));
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ContainerOfProductData(
            productModel: productModel,
          ),
          ProductImg(
            productModel: productModel,
          ),
        ],
      ),
    );
  }
}
