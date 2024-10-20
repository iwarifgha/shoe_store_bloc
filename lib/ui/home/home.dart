import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoe_store_bloc/controller/bloc/home_bloc/home_events.dart';
import 'package:shoe_store_bloc/mock_data/product_list.dart';
import 'package:shoe_store_bloc/ui/product/details.dart';
import '../../controller/bloc/home_bloc/home_bloc.dart';
import '../../controller/bloc/home_bloc/home_states.dart';
import '../../helpers/enums.dart';
import '../../widgets/helpers/product_card.dart';
import '../../widgets/helpers/search_bar.dart';
import '../../widgets/helpers/shoe_store_app_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<ShoeCategory> categories = [ShoeCategory.ai, ShoeCategory.alien];


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final itemHeight = size.height / 2.5;
    final itemWidth = size.width / 2;
    FocusScope.of(context).unfocus();

    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return [
        const SliverAppBar(
          surfaceTintColor: Colors.transparent,
          snap: true,
          floating: true,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 50),
            child: ShoeStoreAppBar(),
          ),
        )
      ];
    }, body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      state as HomePageState;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 5),
            const ShoeStoreSearchBar(),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: categories
                        .map((category) => FilterChip(
                            selected: context
                                .watch<HomeBloc>()
                                .categoryList
                                .contains(category),
                            label: Text(category == ShoeCategory.alien
                                ? 'Alien'
                                : 'AI'),
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            onSelected: (selected) {
                              if (selected) {
                                context
                                    .read<HomeBloc>()
                                    .add(AddFilterEvent(category: category));
                              } else {
                                context
                                    .read<HomeBloc>()
                                    .add(RemoveFilterEvent(category: category));
                              }
                            }))
                        .toList(),
                  ),
                  const SizedBox(height: 15),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (itemWidth / itemHeight),
                      ),
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        return ShoeStoreProductCard(
                          product: state.products[index],
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScreen(
                                          product: listOfShoes[index],
                                        )));
                          },
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      );
    }));
  }
}
