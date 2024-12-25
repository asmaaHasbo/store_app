import 'package:store_app/core/helper/api.dart';

class GetAllCategoriesService {
  Future<List> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
