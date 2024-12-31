import 'package:flutter/material.dart';
import 'package:store_app/features/products_screen/widgets/fav_icon.dart';
import 'package:store_app/models/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.productModel});

  ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 5, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${productModel.title!.substring(0, 7)}...',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${productModel.price}'),
                AddToFavIcon(productModel:productModel,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
