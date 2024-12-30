import 'package:store_app/core/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetCategoryService {

  Future<List<ProductModel>> getCategory({required categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productModelList = [];

    for (int i = 0; i < data.length; i++) {
      productModelList.add(ProductModel.fromJson(data[i]));
    }
    return productModelList;
  }
}
