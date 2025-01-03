import 'package:flutter/material.dart';
import 'package:store_app/core/shared_widgets/product_img.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/core/shared_widgets/product_rate.dart';
import '../../../core/shared_widgets/custom_divider.dart';
import '../../../core/shared_widgets/navigator_function.dart';
import '../../../core/shared_widgets/product_price.dart';
import '../../../core/shared_widgets/product_title.dart';
import '../../product_details/product_details_screen.dart';
import 'arrow_icon.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigatorFunction(
            context,
            ProductDetailsScreen(
                productModel: productModel));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10 ,horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        // margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: ProductImg(productModel: productModel),
                    title: ProductTitle(productModel: productModel),
                    subtitle: ProductPrice(productModel: productModel),
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
            // const CustomDivider(),
          ],
        ),
      ),
    );
  }
}
