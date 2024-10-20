
import 'package:equatable/equatable.dart';

abstract class SearchEvent extends Equatable{}

class SearchProductEvent extends SearchEvent{
    SearchProductEvent({required this.searchWord});

  final String searchWord;
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
