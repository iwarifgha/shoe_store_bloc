import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store_bloc/controller/bloc/search_bloc/search_bloc.dart';
import 'package:shoe_store_bloc/controller/bloc/search_bloc/search_events.dart';
import 'package:shoe_store_bloc/controller/bloc/search_bloc/search_states.dart';
import 'package:shoe_store_bloc/widgets/text/bold_text.dart';
import 'package:shoe_store_bloc/widgets/text/normal_text.dart';

class SearchScreen extends StatelessWidget {
    SearchScreen({super.key,});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: NormalText(text: 'Search'),
          centerTitle: true,
        ),
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                child: Column(
                  children: [
                    TextField(
                      autofocus: true,
                      controller: searchController,
                      onChanged: (text){
                         context.read<SearchBloc>().add(SearchProductEvent(searchWord: text));
                        },
                      //onTap: ,
                    ),
                    BlocBuilder<SearchBloc, SearchState>(
                      builder: (BuildContext context, state) {
                        if(state is SearchedProductState){
                          return Expanded(
                              child: ListView.separated(
                                  itemBuilder: (context, index){
                                    return NormalText(
                                        text: state.searchResult[index]
                                    );
                                  },
                                  separatorBuilder: (context, _){
                                    return const Divider(
                                      thickness: 0.2,
                                      color: Colors.greenAccent,
                                    );
                                  },
                                  itemCount: state.searchResult.length));
                        } else {
                          return Container();
                        }

                      },
                    )
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
