import 'package:dio/dio.dart';
import 'package:store_app/core/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProductService {
  Dio dio = Dio();

  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productModelList = [];

    for (int i = 0; i < data.length; i++) {
      productModelList.add(ProductModel.fromJson(data[i]));
    }
    return productModelList;
  }
}
