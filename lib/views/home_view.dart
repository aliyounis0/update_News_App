import 'package:flutter/material.dart';
import 'package:news_app/widgets/article_list_builder.dart';
import 'package:news_app/widgets/list_card_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                fontSize: 30,
                color: Colors.orangeAccent,
              ),
            ),
            Text(
              "App",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CardList()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            ArticleListBuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}
