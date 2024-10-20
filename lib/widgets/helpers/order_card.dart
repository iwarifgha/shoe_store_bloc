import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_store_bloc/widgets/helpers/price_tag_widget.dart';

import '../../model/order_model.dart';
import '../text/normal_text.dart';
import '../text/shaded_text.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.order});

  final Order order;
  @override
  Widget build(BuildContext context) {
    final quantity = order.quantity;
    return ListTile(
      leading: Container(
        height: 40,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(order.product.imageAddress),
            )),
      ),
      title: NormalText(text:order.product.name),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Price(price: order.product.price, fontSize: 10,),
          ShadedText(text:'QTY: $quantity', size: 10,)
        ],
      ) ,
    );
  }
}
