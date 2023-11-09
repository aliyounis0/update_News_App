import 'package:flutter/material.dart';
import 'package:news_app/widgets/article_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
            opacity: 1,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            categoryName,
            style: const TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            ArticleListBuilder(
              category: categoryName,
            ),
          ],
        ),
      ),
    );
  }
}
