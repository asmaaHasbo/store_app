import 'package:flutter/cupertino.dart';

import '../../../core/shared_widgets/product_rate.dart';
import '../../../core/shared_widgets/product_title.dart';

Widget buildTitleAndRate({required productModel }){
  return  Padding(
    padding: const EdgeInsets.only(top: 10, bottom: 10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductTitle(productModel: productModel),
        ProductRate(productModel:productModel),
      ],
    ),
  );
}