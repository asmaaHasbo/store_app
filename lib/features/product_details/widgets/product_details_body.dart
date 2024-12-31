import 'package:flutter/material.dart';
import 'package:store_app/features/product_details/widgets/product_description.dart';
import 'package:store_app/features/product_details/widgets/product_price.dart';
import 'package:store_app/core/shared_widgets/product_rate.dart';
import 'package:store_app/features/product_details/widgets/product_size_options.dart';
import 'package:store_app/features/product_details/widgets/product_title.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/core/shared_widgets/product_img.dart';
import 'add_to_cart_button.dart';

class ProductDetailsBody extends StatelessWidget {
  ProductDetailsBody({super.key, required this.productModel});
  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];

    return

      Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ProductImg(productModel: productModel),
          //--- name + rate
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductTitle(productModel: productModel),
                ProductRate(productModel: productModel),
              ],
            ),
          ),
          //---- description ---
          ProductDescription(productModel: productModel),
          //--- size options----
          const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                textAlign: TextAlign.start,
                'Size',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const ProductSizeOptions(),
          //----- price + button
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductPrice(productModel: productModel),
                addToCartButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
