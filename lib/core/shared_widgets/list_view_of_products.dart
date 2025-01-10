import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:store_app/core/shared_widgets/custom_slidable.dart';
import 'package:store_app/features/favourites_screen/widgets/custom_list_tile.dart';
import 'package:store_app/features/orders_screen/widgets/order_product_ui.dart';
import 'package:store_app/models/product_model.dart';

class ListViewOfProducts extends StatelessWidget {
  ListViewOfProducts({
    super.key,
    required this.productModelList,
    required this.screenName,
    required this.sizesList,
    // required this.docsIdList,
    // required this.collectionName,
  });

  // List docsIdList;
  // CollectionReference collectionName;

  final List<ProductModel> productModelList;
  String screenName;
  List sizesList;

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      closeWhenOpened: true,
      child: ListView.builder(
          itemCount: productModelList.length,
          itemBuilder: (context, index) {
            return CustomSlidable(
                slidableChild: screenName == "favourites"
                    ? CustomListTile(
                        productModel: productModelList[index],
                      )
                    : OrderProductUi(
                        productModel: productModelList[index],
                        size: sizesList[index],
                      ),
                // docId: docsIdList[index],
                // collectionName: collectionName
            );
          }),
    );
  }
}
