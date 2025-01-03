import 'package:flutter/material.dart';
import 'package:store_app/core/shared_widgets/box_decoration_shadow.dart';
import 'package:store_app/core/shared_widgets/product_img.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/core/shared_widgets/product_rate.dart';
import 'package:store_app/core/shared_widgets/navigator_function.dart';
import 'package:store_app/core/shared_widgets/product_price.dart';
import 'package:store_app/core/shared_widgets/product_title.dart';
import 'package:store_app/features/product_details/product_details_screen.dart';
import 'arrow_icon.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: GestureDetector(
        onTap: () {
          navigatorFunction(
              context, ProductDetailsScreen(productModel: productModel));
        },
        child: Container(
          decoration: boxDecorationShadow(),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    leading: ProductImg(productModel: productModel),
                    title: ProductTitle(productModel: productModel),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 20.0 , ),
                      child: ProductPrice(productModel: productModel),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  ProductRate(productModel: productModel),
                  ArrowIcon(productModel: productModel)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
