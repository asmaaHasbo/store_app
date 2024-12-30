import 'package:flutter/material.dart';

class ProductSizeOptions extends StatefulWidget {
  const ProductSizeOptions({
    super.key,
  });

  @override
  State<ProductSizeOptions> createState() => _ProductSizeOptionsState();
}

class _ProductSizeOptionsState extends State<ProductSizeOptions> {
  List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];

  bool taped = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sizes.length,
          itemBuilder: (context, index) {

              return TextButton(
                  onPressed: ( ) {

                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      sizes[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ));
            }

            // else {
            //   return TextButton(
            //     onPressed: () {
            //     },
            //     child: Text(
            //       sizes[index],
            //     ),
            //   );
            // }
          ),
    );

    //   Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   children: [
    //
    //     TextButton(
    //       onPressed: () {},
    //       child: Container(
    //         decoration: BoxDecoration(
    //             color: Colors.black, borderRadius: BorderRadius.circular(15)),
    //         padding: const EdgeInsets.all(15),
    //         child: const Text(
    //           'M',
    //           style: TextStyle(color: Colors.white),
    //         ),
    //       ),
    //     ),
    //     TextButton(
    //       onPressed: () {},
    //       child: const Text('L'),
    //     ),
    //     TextButton(
    //       onPressed: () {},
    //       child: const Text('XL'),
    //     ),
    //     TextButton(
    //       onPressed: () {},
    //       child: const Text('XXL'),
    //     ),
    //   ],
    // );
  }
}
