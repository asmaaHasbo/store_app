import 'package:flutter/material.dart';

BoxDecoration boxDecorationShadow() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey[400]!,
        spreadRadius: 1,
        blurRadius: 10,
        offset: const Offset(0, 3),
      ),
    ],
  );
}
