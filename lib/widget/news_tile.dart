import 'package:flutter/material.dart';

import 'package:news_app/models/news_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.newsModel});

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            newsModel.image!,
            height: 300,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          newsModel.title,
          maxLines: 3,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: 10),
        Text(
          newsModel.descreption! ?? "",
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
