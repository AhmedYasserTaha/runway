import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:run_away/core/model/product_model.dart';
import 'package:run_away/core/widget/custom_app_bar.dart';
import 'package:run_away/pages/product/widget/scetion_one_categories.dart';

class DetailsProducts extends StatelessWidget {
  const DetailsProducts({super.key, required this.items});
  final ProductModel items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Men",
        leadingIcon: "assets/icons/arrow-left.png",
        onTap: Navigator.of(context).pop,
        actionIcon: "assets/icons/pag.jpg",
      ),
      body: Column(children: [SectionOneCategories(), const Gap(20)]),
    );
  }
}
