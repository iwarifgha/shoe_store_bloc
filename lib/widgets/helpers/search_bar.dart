import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_store_bloc/ui/search/search_screen.dart';

class ShoeStoreSearchBar extends StatelessWidget {
  const ShoeStoreSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SearchBar(
          hintText: 'What boots are you looking for?',
          hintStyle:
              const WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
          trailing: const [Icon(Icons.search)],
          elevation: const WidgetStatePropertyAll(1),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SearchScreen()));
          }),
    );
  }
}
