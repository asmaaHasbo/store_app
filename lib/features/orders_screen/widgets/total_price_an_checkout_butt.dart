import 'package:flutter/material.dart';
import 'package:store_app/features/orders_screen/widgets/checkout_button.dart';
class TotalPriceAnCheckoutButt extends StatelessWidget {
  TotalPriceAnCheckoutButt({
    super.key,
    required this.totalPrice,
  });
double  totalPrice;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,
      height: 50,
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('TotalPrice: $totalPrice ' , style: const TextStyle(fontSize: 20),),
            checkoutButton(),
          ],
        ),
      ),
    );
  }
}
