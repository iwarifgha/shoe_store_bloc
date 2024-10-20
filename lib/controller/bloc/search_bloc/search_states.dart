import 'package:equatable/equatable.dart';
import 'package:shoe_store_bloc/model/shoe_model.dart';

abstract class SearchState extends Equatable{}

class SearchInitialState extends SearchState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SearchedProductState extends SearchState {
  SearchedProductState({required this.searchResult});
  final List<String> searchResult;
  @override
  // TODO: implement props
  List<Object?> get props => [searchResult];
}