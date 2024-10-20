import 'package:shoe_store_bloc/model/shoe_model.dart';

class Order {
  final Product product;
  final int quantity;
  final int totalAmount;

  Order({
    required this.quantity,
    required this.totalAmount,
    required this.product,
  });
}
