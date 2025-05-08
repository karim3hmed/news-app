import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/news_listview.dart';

class Newslistviewbuilder extends StatefulWidget {
  const Newslistviewbuilder({super.key, required this.category});

  final String category;

  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState();
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getnews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListview(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text("there was an error , try again"),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
