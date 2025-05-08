import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.articalModel});

  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryPage(category: articalModel.categoryname);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(articalModel.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Text(
              articalModel.categoryname,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
