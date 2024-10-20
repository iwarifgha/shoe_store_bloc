import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_store_bloc/ui/feed/feed.dart';
import 'package:shoe_store_bloc/ui/orders/orders.dart';
import 'package:shoe_store_bloc/ui/profile/favorites.dart';
import 'package:shoe_store_bloc/ui/cart/cart.dart';
import 'package:shoe_store_bloc/ui/profile/profile.dart';
import 'package:shoe_store_bloc/widgets/helpers/shoe_app_bottom_bar.dart';

import 'ui/home/home.dart';

class AppBase extends StatefulWidget {
  const AppBase({super.key});

  @override
  State<AppBase> createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> with TickerProviderStateMixin {
  List screens = [
    HomeScreen(),
    const OrdersScreen(),
    const FeedScreen(),
    const ProfileScreen(),
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
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: 'Orders'),
            BottomNavigationBarItem(icon: Icon(Icons.feed), label: 'Feed'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: screenIndex,
          onTap: (int value) {
            setState(() {
              screenIndex = value;
            });
          },
        ));
  }
}
