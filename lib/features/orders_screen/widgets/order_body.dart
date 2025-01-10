import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../core/firebase_functions/get_products_from_db.dart';
import 'total_price_an_checkout_butt.dart';

class OrderBody extends StatefulWidget {
  const OrderBody({super.key});

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
            onTotalPriceCalculated: (value) {

              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (mounted) {
                  setState(() {
                    totalPrice = value;
                  });
                }
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
