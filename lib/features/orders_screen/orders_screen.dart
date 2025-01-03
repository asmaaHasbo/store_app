import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/firebase_functions/get_products_from_db.dart';
import 'package:store_app/core/shared_widgets/app_bar.dart';
import 'package:store_app/features/orders_screen/widgets/order_body.dart';

class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});
  CollectionReference orderProducts =
      FirebaseFirestore.instance.collection('orderProducts');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Orders'),
      body: GetProductsFromDB(
        collectionName: orderProducts,
        screenName: 'orders',
      ),
    );
  }
}
