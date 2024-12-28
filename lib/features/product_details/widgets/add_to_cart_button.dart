import "package:flutter/material.dart";

ElevatedButton addToCartButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      fixedSize: const Size(140, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: const Text(
      'Add To Cart',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    ),
  );
}
