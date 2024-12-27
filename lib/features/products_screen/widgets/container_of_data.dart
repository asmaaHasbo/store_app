import 'package:flutter/material.dart';

import 'package:store_app/models/product_model.dart';
import 'custom_card.dart';

class ContainerOfProductData extends StatelessWidget {
  ContainerOfProductData({super.key,
    required this.productModel});

  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: CustomCard(
        productModel: productModel,
      ),
    );
  }
}
