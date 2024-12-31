import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey[400],
      thickness: 1,
      endIndent: 10,
      indent: 10,
      height: 30,
    );
  }
}
