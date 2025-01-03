import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/core/firebase_functions/add_product_to_db.dart';

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
    // StreamBuilder(
    //   stream: favouriteProducts.snapshots(),
    //   builder: (context, snapshot) {
    // if (snapshot.hasData) {
    //   List<QueryDocumentSnapshot>? collectionData = snapshot.data!.docs;
    //   List<ProductModel> productModelList = [];
    //   for (int i = 0; i < collectionData.length; i++) {
    //     productModelList.add(ProductModel.fromJson(collectionData[i]));
    //
    //     // if(collectionData[i]['title'] == widget.productModel.title){
    //     // }
    //   }
    //
    //   // List x = [1 ,3 ,4];
    //   // int y = 3 ;
    //
    //   // print(productModelList.length);
    // }        });
    return IconButton(
      onPressed: () {
        onPressFavIcon = !onPressFavIcon;
        setState(() {});

        addProductToDB(
            productModel: widget.productModel,
            collectionName: favouriteProducts);
      },
      icon: Icon(
        Icons.favorite,
        color: onPressFavIcon ? Colors.red : Colors.grey,
      ),
    );
  }
}
