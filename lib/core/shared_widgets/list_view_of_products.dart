import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:store_app/features/favourites_screen/widgets/custom_list_tile.dart';
import 'package:store_app/features/orders_screen/widgets/order_product_ui.dart';
import 'package:store_app/models/product_model.dart';

class ListViewOfProducts extends StatelessWidget {
  ListViewOfProducts({
    super.key,
    required this.productModelList,
    required this.screenName,
    required this.sizesList,
  });

  final List<ProductModel> productModelList;
  String screenName;
  List sizesList;

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      closeWhenOpened: true,

      child: ListView.builder(
        itemCount: productModelList.length,
        itemBuilder: (context, index) => Slidable(
          closeOnScroll: true,
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
            child: screenName == "favourites"
                ? CustomListTile(
                    productModel: productModelList[index],
                  )
                : OrderProductUi(
                    productModel: productModelList[index],
                    size: sizesList[index])),
      ),
    );
  }
}
