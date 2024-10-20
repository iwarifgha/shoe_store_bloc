import 'package:equatable/equatable.dart';
import 'package:shoe_store_bloc/helpers/enums.dart';
import 'package:shoe_store_bloc/model/shoe_model.dart';

abstract class HomeEvent extends Equatable{
  const HomeEvent();
}

class InitialEvent extends HomeEvent{
  const InitialEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HomeLoadedEvent extends HomeEvent{
  const HomeLoadedEvent();

   @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}



class AddFilterEvent extends HomeEvent{
  const AddFilterEvent({required this.category});

  final ShoeCategory category;

  @override
  // TODO: implement props
  List<Object?> get props => [category];
}

class RemoveFilterEvent extends HomeEvent{
  const RemoveFilterEvent({required this.category});

  final ShoeCategory category;

  @override
  // TODO: implement props
  List<Object?> get props => [category];
}