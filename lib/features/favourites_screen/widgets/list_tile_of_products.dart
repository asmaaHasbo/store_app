import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:store_app/features/favourites_screen/widgets/custom_list_tile.dart';

import '../../../models/product_model.dart';

class ListTileOfProducts extends StatelessWidget {
  const ListTileOfProducts({super.key, required this.productModelList});

  final List<ProductModel> productModelList;

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      closeWhenOpened: true,
      child: ListView.builder(
        itemCount: productModelList.length,
        itemBuilder: (context, index) => Slidable(
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  print(productModelList[index].title);
                },
                backgroundColor: Colors.red,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: CustomListTile(
            productModel: productModelList[index],
          ),
        ),
      ),
    );
  }
}
