import 'package:flutter/material.dart';
import 'package:store_app/features/orders_screen/orders_screen.dart';
import 'package:store_app/features/products_screen/all_products_screen.dart';
import 'package:store_app/features/profile_screen/profile_screen.dart';
import 'package:store_app/features/search_screen/search_screen.dart';
import 'package:store_app/features/favourites_screen/favourite_screen.dart';
import 'widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 3;
  List<Widget> screens = [
    const AllProductsScreen(),
    const SearchScreen(),
    FavouritesScreen(),
    OrdersScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
