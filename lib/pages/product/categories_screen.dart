import 'package:flutter/material.dart';
import 'package:run_away/core/widget/custom_app_bar.dart';
import 'package:run_away/pages/product/widget/scetion_one_categories.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Men",
        leadingIcon: "assets/icons/arrow-left.png",
        actionIcon: "assets/icons/pag.jpg",
      ),
      body: Column(children: [SectionOneCategories()]),
    );
  }
}
