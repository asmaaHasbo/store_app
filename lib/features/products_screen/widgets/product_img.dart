import 'package:flutter/material.dart';

class ProductImg extends StatelessWidget {
  const ProductImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 70,
      right: 20,
      child: Image.network(
        'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
        height: 90,

      ),
    );
  }
}
