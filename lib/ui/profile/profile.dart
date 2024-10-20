import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe_store_bloc/widgets/text/bold_text.dart';
import 'package:shoe_store_bloc/widgets/text/normal_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NormalText(text: 'Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.favorite_border_outlined,),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 10),
            title: NormalText(text: 'Favorites'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 10,
            ),
            title: NormalText(text: 'Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.question_mark_outlined),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 10),
            title: NormalText(text: 'Help'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outline_outlined),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, size: 10),
            title: NormalText(text: 'Account settings'),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextButton(
                  onPressed: () {},
                  child: BoldText(
                    size: 18,
                    text: 'LOGOUT',
                    color: Colors.redAccent,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
