import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/features/orders_screen/widgets/checkout_button.dart';
import 'package:store_app/models/product_model.dart';

import '../../../core/firebase_functions/get_products_from_db.dart';
import 'total_price_an_checkout_butt.dart';

class OrderBody extends StatefulWidget {
  OrderBody({super.key});

  @override
  State<OrderBody> createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> {
  CollectionReference orderProducts =
      FirebaseFirestore.instance.collection('orderProducts');

  double totalPrice = 100;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GetProductsFromDB(
            collectionName: orderProducts,
            screenName: 'orders',
            receiveTotalPrice: (value) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  totalPrice = value;
                });
                // Add Your Code here.
              });
            },
          ),
        ),
      TotalPriceAnCheckoutButt(totalPrice: totalPrice)
      ],
    );
  }
}
