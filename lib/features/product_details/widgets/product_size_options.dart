import 'package:flutter/material.dart';

class ProductSizeOptions extends StatefulWidget {
  ProductSizeOptions({super.key, required this.selectedSizeFun});
  Function(String) selectedSizeFun;
  @override
  State<ProductSizeOptions> createState() => _ProductSizeOptionsState();
}

class _ProductSizeOptionsState extends State<ProductSizeOptions> {
  @override
  String selectedSize = 'M';
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildTextButton('S'),
        buildTextButton('M'),
        buildTextButton('L'),
        buildTextButton('XL'),
        buildTextButton('XXL'),
      ],
    );
  }

  TextButton buildTextButton(String size) {
    return TextButton(
      onPressed: () {
        selectedSize = size;
        widget.selectedSizeFun(selectedSize);
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          color: selectedSize == size ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(15),
        child: Text(
          size,
          style: TextStyle(
              color: selectedSize == size ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
