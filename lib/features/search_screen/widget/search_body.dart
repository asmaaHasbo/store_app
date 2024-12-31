import 'package:flutter/material.dart';
import 'package:store_app/features/search_screen/widget/search_result.dart';
import 'package:store_app/features/search_screen/widget/search_text_filed.dart';


class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  String searchValue = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextField(
          onChange: (value) {
            searchValue = value;
            setState(() {});
          },
        ),
      SearchResult(searchValue: searchValue,)
      ],
    );
  }
}
