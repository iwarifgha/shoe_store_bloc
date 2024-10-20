
import 'package:equatable/equatable.dart';

import '../../../model/shoe_model.dart';

abstract class HomeState extends Equatable {
  final bool? hasException;
  final bool? isLoading;
  final String? errorMessage;

  const HomeState({
    this.hasException,
    this.isLoading,
    this.errorMessage,
  });
}

class InitialState extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HomePageState extends HomeState {
  const HomePageState({required this.products, });
  final List<SmartBoot> products;
   @override
  // TODO: implement props
  List<Object?> get props => [products,];
}

// If user is not logged in
class AuthState extends HomeState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}




