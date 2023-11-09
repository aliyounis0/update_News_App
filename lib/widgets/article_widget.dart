import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/views/web_view.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => WebView(url: articleModel.url),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: articleModel.image == null
                  ? "https://a.fsdn.com/sd/topics"
                  : articleModel.image!,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                size: 100,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
            endIndent: 10.0,
            indent: 10.0,
          ),
        ],
      ),
    );
  }
}
