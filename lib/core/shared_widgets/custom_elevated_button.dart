import "package:flutter/material.dart";
class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.onPress ,
    required this.buttonName ,
  });

  VoidCallback onPress ;
  String buttonName ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress ,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        fixedSize: const Size(140, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child:  Text(
        buttonName,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
