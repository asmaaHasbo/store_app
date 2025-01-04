// import "package:store_app/models/product_model.dart";
// import 'package:store_app/features/product_details/logic/add_product_to_order_coll.dart';

import 'package:store_app/core/shared_widgets/custom_elevated_button.dart';

CustomElevatedButton checkoutButton(
  // required ProductModel productModel,
  // required size,
) {
  return CustomElevatedButton(
    onPress: () {
      // addProductToOrderColl(
      //   productModel: productModel,
      //   size: size,
      // );
    },
    buttonName: 'Checkout',
  );
}
