import 'package:flutter/material.dart';
import 'package:shoe_store_bloc/mock_data/order_list.dart';
import 'package:shoe_store_bloc/widgets/helpers/order_card.dart';

import '../../widgets/text/shaded_text.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

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
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    //This ListView will talk with the OrderBloc in future. for now we use a mock list
                    final order = listOfOrders[index];
                    return OrderCard(order: order);
                  },
                  separatorBuilder: (context, _) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        thickness: 0.2,
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                  itemCount: listOfOrders.length)),
        ],
      ),
    );
  }
}
