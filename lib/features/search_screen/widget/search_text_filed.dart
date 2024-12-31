import 'package:flutter/material.dart';
class SearchTextField extends StatelessWidget {
 SearchTextField({
    super.key,
    required this.onChange
  });

  Function(String) onChange ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0 , left: 10 , bottom: 10 ),
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
            fillColor: Colors.grey[200],
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey[200]! , width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey[200]! , width: 1)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey[200]! ,width: 1 )),
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.grey[500]),
            prefixIcon: const Icon(Icons.search  ,
              // color: Colors.grey[500],
            )),
      ),
    );
  }
}


