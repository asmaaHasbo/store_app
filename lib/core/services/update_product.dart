import 'package:store_app/core/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateData {
 Future<ProductModel> updateData({
    required String id,
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products/$id",
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },

    );
    return ProductModel.fromJson(data);
  }
}
