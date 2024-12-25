import 'package:flutter/material.dart';
import 'package:store_app/features/products_screen/widgets/product_img.dart';

import 'container_of_data.dart';
class CustomStack extends StatelessWidget {
  const CustomStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      // alignment: FractionalOffset.topRight,
      clipBehavior: Clip.none,
      children: [
        ContainerOfProductData(),
        ProductImg(),
      ],
    );
  }
}
