import 'package:flutter/material.dart';
import 'package:store_app/features/orders_screen/widgets/counter.dart';
import 'package:store_app/features/product_details/widgets/product_price.dart';

import '../../../core/shared_widgets/box_decoration_shadow.dart';
import '../../../core/shared_widgets/product_img.dart';
import '../../../core/shared_widgets/product_title.dart';
import '../../../models/product_model.dart';

class OrderProductUi extends StatelessWidget {
  const OrderProductUi({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 150,
      decoration: boxDecorationShadow(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductImg(productModel: productModel)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductTitle(productModel: productModel),
                const Text(
                  'Size : M ',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${productModel.price}',
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(width: 30),
                    const Counter(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
