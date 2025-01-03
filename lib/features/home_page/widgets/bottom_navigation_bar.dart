import 'package:flutter/material.dart';
import 'package:store_app/core/themes/colors.dart';

// ignore: must_be_immutable
class CustomBottomNavigation extends StatelessWidget {
  CustomBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  int currentIndex;
  Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.shopping_cart_sharp),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(Icons.person),
        ),
      ],
      currentIndex: currentIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: AppColors.mainColor,
      onTap: onTap,
    );
  }
}
