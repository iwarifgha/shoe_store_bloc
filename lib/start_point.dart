import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_store_bloc/ui/profile/favorites.dart';
import 'package:shoe_store_bloc/ui/orders/orders.dart';
import 'package:shoe_store_bloc/ui/profile/profile.dart';
import 'package:shoe_store_bloc/widgets/helpers/shoe_app_bottom_bar.dart';

import 'ui/home/home.dart';

class StartPoint extends StatefulWidget {
  const StartPoint({super.key});

  @override
  State<StartPoint> createState() => _StartPointState();
}

class _StartPointState extends State<StartPoint> with TickerProviderStateMixin {

  List screens = [
    HomeScreen(),
    const ProfileScreen(),
    const FavoritesScreen(),
    const OrdersScreen()
  ];


 int screenIndex = 0;


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: screens[screenIndex],
      bottomNavigationBar: ShoeAppBottomBar(
        items: const  [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled) , label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded) , label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag) , label: 'Promo'),
          BottomNavigationBarItem(icon: Icon(Icons.discount) , label: 'Orders'),
        ],
        currentIndex: screenIndex,
        onTap: (int value) {
          setState(() {
            screenIndex = value;
          });
        },
      )
    );
  }
}
