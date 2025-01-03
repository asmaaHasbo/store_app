import 'package:flutter/material.dart';
import 'package:store_app/core/shared_widgets/app_bar.dart';
import 'package:store_app/features/search_screen/widget/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Find Products'),
      body: const SearchBody(),
    );
  }
}
