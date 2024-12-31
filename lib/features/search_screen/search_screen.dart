import 'package:flutter/material.dart';
import 'package:store_app/features/search_screen/widget/search_body.dart';

import '../../core/themes/styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Find Products',
              style: Styles.textStyle45,
            ),
          ),
        ),
        body: SearchBody());
  }
}
