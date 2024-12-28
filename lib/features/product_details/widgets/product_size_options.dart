import 'package:flutter/material.dart';

class ProductSizeOptions extends StatelessWidget {
  const ProductSizeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text('S'),
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.all(15),
            child: const Text(
              'M',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('L'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('XL'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('XXL'),
        ),
      ],
    );
  }
}
