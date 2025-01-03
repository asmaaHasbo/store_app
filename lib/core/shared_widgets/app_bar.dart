import 'package:flutter/material.dart';

import '../themes/styles.dart';

AppBar customAppBar({required String title}){
 return AppBar(
    title: Center(
      child: Text(
       title ,
        style: Styles.textStyle45,
      ),
    ),
  );
}