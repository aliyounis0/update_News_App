import 'package:flutter/cupertino.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/article_widget.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key, required this.articles});
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ArticleWidget(articleModel: articles[index]),
        ),
        childCount: articles.length,
      ),
    );
  }
}
