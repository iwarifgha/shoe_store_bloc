import 'package:flutter/material.dart';
import 'package:shoe_store_bloc/model/shoe_model.dart';

import '../../mock_data/product_list.dart';
import '../../widgets/helpers/cart_card.dart';
import '../../widgets/text/shaded_text.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 21,
        ),
        centerTitle: true,
        title: ShadedText(
          text: 'My Orders',
          color: Colors.black,
          size: 15,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: listOfShoes.length,
                itemBuilder: (context, index) {
                  return CartCard(product: listOfShoes[index]);
                }),
          )
        ],
      ),
    );
  }
}
