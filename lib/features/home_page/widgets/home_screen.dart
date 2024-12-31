import 'package:flutter/material.dart';
import 'package:store_app/core/themes/styles.dart';
import 'package:store_app/features/orders_screen/orders_screen.dart';
import 'package:store_app/features/products_screen/products_screen.dart';
import 'package:store_app/features/profile_screen/profile_screen.dart';
import 'package:store_app/features/search_screen/search_screen.dart';
import '../../favourites_screen/favourite_screen.dart';
import 'bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const ProductsScreen(),
    const SearchScreen(),
    const OrdersScreen(),
    FavouritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'New Trends',
          style: Styles.textStyle45,
        )),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_sharp)),
        ],
      ),
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
