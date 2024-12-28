import "package:flutter/material.dart";

Future<dynamic> navigatorFunction(BuildContext context, screenName) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screenName),
  );
}
