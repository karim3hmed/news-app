import 'package:flutter/material.dart';
import 'package:news_app/widget/category_listview.dart';
import 'package:news_app/widget/new_listview_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News"),
            Text(" Cloud", style: TextStyle(color: Colors.amber)),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryListview()),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          Newslistviewbuilder(category: "general"),
        ],
      ),
    );
  }
}
