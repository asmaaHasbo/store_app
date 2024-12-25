import 'package:flutter/material.dart';
import 'custom_stack.dart';
class ProductsGridList extends StatelessWidget {
  const ProductsGridList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
      child: GridView.builder(
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 60,
        ),
        itemBuilder: (BuildContext context, int index) {
          return const CustomStack();
        },
      ),
    );
  }
}
