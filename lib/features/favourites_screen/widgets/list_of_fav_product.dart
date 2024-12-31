import 'package:flutter/cupertino.dart';
import 'package:store_app/features/favourites_screen/widgets/custom_list_tile.dart';

import '../../../models/product_model.dart';

class ListOfFavProduct extends StatelessWidget {
const ListOfFavProduct({super.key , required this.productModelList,
  });

  final List<ProductModel> productModelList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:productModelList.length,
      itemBuilder: (context, index) =>  CustomListTile(productModel:productModelList[index] ,),
    );
  }
}
