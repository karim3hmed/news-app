import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widget/news_tile.dart';

class NewsListview extends StatelessWidget {
  const NewsListview({super.key, required this.articles});

  final List<NewsModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsTile(newsModel: articles[index]);
      }),
    );
  }
}
