import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key});

  final List<ArticalModel> Articleslist = const [
    ArticalModel(categoryname: "business", image: "assets/business.avif"),
    ArticalModel(categoryname: "technology", image: "assets/technology.jpeg"),
    ArticalModel(
      categoryname: "entertainment",
      image: "assets/entertaiment.avif",
    ),
    ArticalModel(categoryname: "Sports", image: "assets/sports.avif"),
    ArticalModel(categoryname: "science", image: "assets/science.avif"),
    ArticalModel(categoryname: "general", image: "assets/general.avif"),

    ArticalModel(categoryname: "health", image: "assets/health.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: Articleslist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(articalModel: Articleslist[index]);
        },
      ),
    );
  }
}
