import 'package:flutter/material.dart';
import 'package:store_app/features/products_screen/widgets/all_products_body.dart';

import '../../core/themes/styles.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'New Trends',
            style: Styles.textStyle45,
          )),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_cart_sharp)),
          ],
        ),
        body: const AllProductsBody());
  }
}
