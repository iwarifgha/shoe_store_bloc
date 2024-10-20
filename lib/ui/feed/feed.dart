import 'package:flutter/material.dart';
import 'package:shoe_store_bloc/mock_data/feed_posts.dart';
import 'package:shoe_store_bloc/widgets/text/bold_text.dart';
import 'package:shoe_store_bloc/widgets/text/normal_text.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: NormalText(text: 'Feed'),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              final post = feedPosts[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                     // borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10),
                        child: BoldText(
                          text: post.title,
                          size: 16,
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(post.image))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 10),
                        child: NormalText(
                          text: post.content,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, _){
              return const Divider(
                color: Colors.greenAccent,
                thickness: 0.2,
              );
            },
            itemCount: 5));
  }
}
