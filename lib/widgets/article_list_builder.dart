import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/articles_list.dart';

import '../models/article_model.dart';
import '../services/dio_helper.dart';

class ArticleListBuilder extends StatefulWidget {
  const ArticleListBuilder({super.key, required this.category});
  final String category;
  @override
  State<ArticleListBuilder> createState() => _ArticleListBuilderState();
}

class _ArticleListBuilderState extends State<ArticleListBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = DioHelper(dio: Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ArticlesList(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text("There is an error"),
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        }));
  }
}
