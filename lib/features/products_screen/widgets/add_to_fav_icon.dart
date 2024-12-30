import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddToFavIcon extends StatefulWidget {
  AddToFavIcon({super.key, required this.productModel});
  ProductModel productModel;

  @override
  State<AddToFavIcon> createState() => _AddToFavIconState();
}

class _AddToFavIconState extends State<AddToFavIcon> {
  bool onPressFavIcon = false;
  CollectionReference favouriteProducts =
      FirebaseFirestore.instance.collection('favouriteProducts');

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressFavIcon = !onPressFavIcon;
        setState(() {});
        favouriteProducts
            .add({
              "title": widget.productModel.title,
              "img": widget.productModel.imageUrl,
              "price": widget.productModel.price,
              "rate": widget.productModel.rating?.rating,
            })
            .then((value) => print("favProduct Added"))
            .catchError((error) => print("Failed to add favProduct: $error"));

      },
      icon: Icon(
        Icons.favorite,
        color: onPressFavIcon ? Colors.red : Colors.grey,
      ),
    );
  }
}
