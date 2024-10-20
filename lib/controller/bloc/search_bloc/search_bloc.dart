
import 'package:bloc/bloc.dart';
import 'package:shoe_store_bloc/controller/bloc/search_bloc/search_events.dart';
import 'package:shoe_store_bloc/controller/bloc/search_bloc/search_states.dart';
import 'package:shoe_store_bloc/mock_data/product_list.dart';
import 'package:shoe_store_bloc/model/shoe_model.dart';

import '../home_bloc/home_states.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState>{
  SearchBloc(): super (SearchInitialState()){
    on<SearchProductEvent>(_onProductSearched);
  }

  List<SmartBoot> products = listOfShoes;

  _onProductSearched(SearchProductEvent event, Emitter<SearchState> emit){
    final result = _searchProducts(event.searchWord);
    emit(SearchedProductState(searchResult: result));
  }

  ///Takes the input String from the user and checks if any product name matches the input.
  ///If the input is empty, it returns an empty list, else it adds the matching String to the list.

  List<String> _searchProducts(String word){
    List<String> searchedProducts = [];
    for(var product in products){
      if(word.isEmpty){
        return searchedProducts;
      }
      else if(product.name.toLowerCase().contains(word)){
        searchedProducts.add(product.name);
      }
    }
    return searchedProducts;
  }
}