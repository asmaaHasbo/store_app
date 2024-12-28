import 'package:flutter/material.dart';
import 'package:store_app/features/product_details/widgets/product_size_options.dart';
import 'package:store_app/models/product_model.dart';

import 'add_to_cart_button.dart';

class ProductDetailsBody extends StatelessWidget {
  ProductDetailsBody({super.key , required this.productModel});
  ProductModel productModel ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.network(
            'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg',
            height: 200,
          ),

          //--- name + rate
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 270,
                  child: Text(
                    'll',
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    Text('4.5'),
                  ],
                ),
              ],
            ),
          ),
          //---- description ---
          const Text(
            "Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates",
            style: TextStyle(fontSize: 14.5, color: Colors.grey),
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
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
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '\$255',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                addToCartButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
