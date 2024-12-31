import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/core/firebase_functions/add_product_to_favourite_collection.dart';

class AddToFavIcon extends StatefulWidget {
  AddToFavIcon({super.key, required this.productModel});
  ProductModel productModel;

  @override
  State<AddToFavIcon> createState() => _AddToFavIconState();
}

class _AddToFavIconState extends State<AddToFavIcon> {
  bool onPressFavIcon = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressFavIcon = !onPressFavIcon;
        setState(() {});
        addProductToFavCollection(productModel: widget.productModel);
      },
      icon: Icon(
        Icons.favorite,
        color: onPressFavIcon ? Colors.red : Colors.grey,
      ),
    );
  }
}
