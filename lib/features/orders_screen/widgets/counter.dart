import 'package:flutter/material.dart';
import 'package:store_app/core/themes/colors.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  int counter = 1 ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(onPressed: (){
          counter--;
          setState(() {

          });
        },
            icon: const Icon(Icons.remove_circle)
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Text('$counter' ,style: const TextStyle(fontSize: 19),
          ),
        ),

        IconButton(onPressed: (){
          counter++;
          setState(() {

          });
        },
            icon:  const Icon(Icons.add_circle_outlined , color: AppColors.mainColor,)
        ),

      ],
    );
  }
}
