import 'package:flutter/material.dart';
import 'package:store_app/features/product_details/widgets/product_details_body.dart';

import 'package:store_app/models/product_model.dart';
class ProductDetailsScreen extends StatelessWidget {
 ProductDetailsScreen({super.key , required this.productModel});
 ProductModel productModel ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  ProductDetailsBody(productModel: null ,),
    );
  }
}
