import 'package:bloc/bloc.dart';
import 'package:shoe_store_bloc/helpers/enums.dart';
import 'package:shoe_store_bloc/mock_data/product_list.dart';
import 'package:shoe_store_bloc/model/shoe_model.dart';

import 'home_events.dart';
import 'home_states.dart';


class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc(): super (InitialState()){
    on<HomeLoadedEvent>((event, emit){
      emit (HomePageState(products: products));
    });

    on<AddFilterEvent>(_onFilterAdded);
    on<RemoveFilterEvent>(_onFilterRemoved);
  }

  List<SmartBoot> products = listOfShoes;
  List<ShoeCategory> categoryList = [];


  _onFilterAdded(AddFilterEvent event, Emitter<HomeState> emit){
    _addItemToCategory(event.category);
    final filteredProductList = _filterShoes();
    emit (HomePageState(products: filteredProductList));
  }

  _onFilterRemoved(RemoveFilterEvent event, Emitter<HomeState> emit){
    _removeItemFromCategory(event.category);
    final filteredProductList = _filterShoes();
    emit (HomePageState(products: filteredProductList));
  }


  _addItemToCategory(ShoeCategory category){
     categoryList.add(category);
  }

  _removeItemFromCategory(ShoeCategory category){
    categoryList.removeWhere((c) => c == category);
  }

  List<SmartBoot> _filterShoes(){
    final filtered = products.where((product) {
      return categoryList.isEmpty || categoryList.contains(product.type);
    }).toList();
    return filtered;
  }




}