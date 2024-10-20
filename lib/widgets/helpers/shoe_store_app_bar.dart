import 'package:flutter/material.dart';

import '../../ui/cart/cart.dart';
import 'cart.dart';

class ShoeStoreAppBar extends StatelessWidget {
  const ShoeStoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Smart Steps,',
                   style: TextStyle(
                    fontSize: 25
                  )
                ),
                 Text(
                  'Smart Journeys',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return CartScreen();
                }));
              },
              child: const CartWidget()
            )
          ],
        ),
      ),
    );
  }
}
