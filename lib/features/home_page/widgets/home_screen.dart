import 'package:flutter/material.dart';
import 'package:store_app/core/themes/styles.dart';
import 'package:store_app/features/products_screen/products_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Trends', style:Styles.textStyle45,),
        actions: [
          IconButton(onPressed: (){},
              icon: const Icon(Icons.shopping_cart_sharp)
          ),
        ],
      ),
      body: const ProductsScreen(),
    );
  }
}
