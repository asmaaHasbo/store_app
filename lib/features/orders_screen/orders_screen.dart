import 'package:flutter/material.dart';
import 'package:store_app/core/shared_widgets/app_bar.dart';
import 'package:store_app/features/orders_screen/widgets/order_body.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(title: 'Orders'),
        body: const OrderBody()
    );
  }
}
