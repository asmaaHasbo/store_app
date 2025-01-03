import 'package:flutter/material.dart';
import 'package:store_app/features/product_details/widgets/product_description.dart';
import 'package:store_app/features/product_details/widgets/product_price.dart';
import 'package:store_app/core/shared_widgets/product_rate.dart';
import 'package:store_app/features/product_details/widgets/product_size_options.dart';
import 'package:store_app/features/product_details/widgets/product_title.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/core/shared_widgets/product_img.dart';
import 'add_to_cart_button.dart';

class ProductDetailsBody extends StatefulWidget {
  ProductDetailsBody({super.key, required this.productModel});
  ProductModel productModel;

  @override
  State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {
  String ? size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ProductImg(productModel: widget.productModel),
          //--- name + rate
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductTitle(productModel: widget.productModel),
                ProductRate(productModel: widget.productModel),
              ],
            ),
          ),
          ProductDescription(productModel: widget.productModel),
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
          ProductSizeOptions(
            selectedSizeFun: (value) {
              setState(() {
                size = value;

              });
              print(size);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProductPrice(productModel: widget.productModel),
                addToCartButton(productModel: widget.productModel, size: size),
              ],
            ),
          )
        ],
      ),
    );
  }
}
