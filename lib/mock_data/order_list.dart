import 'package:shoe_store_bloc/mock_data/product_list.dart';
import 'package:shoe_store_bloc/model/order_model.dart';

final listOfOrders = [
  Order(
      quantity: 2,
      totalAmount: 199,
      product: listOfShoes[0],
      ),
  Order(
    quantity: 1,
    totalAmount: 1000,
    product: listOfShoes[2],
  ),
  Order(
    quantity: 1,
    totalAmount: 400,
    product: listOfShoes[6],
  ),
  Order(
    quantity: 1,
    totalAmount: 399,
    product: listOfShoes[1],
  ),
];