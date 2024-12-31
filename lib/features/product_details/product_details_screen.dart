import 'package:flutter/material.dart';
import 'package:store_app/features/product_details/widgets/product_details_body.dart';

import 'package:store_app/models/product_model.dart';

import '../../core/themes/styles.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen(
      {super.key, required this.productModel, required this.screenName});
  ProductModel productModel;
  String screenName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          screenName,
          style: Styles.textStyle45,
        )),
      ),
      backgroundColor: Colors.white,
      body: ProductDetailsBody(
        productModel: productModel,
      ),
    );
  }
}
