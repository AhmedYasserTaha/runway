import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:run_away/core/model/product_model.dart';
import 'package:run_away/core/widget/custom_app_bar.dart';
import 'package:run_away/pages/product/widget/scetion_one_categories.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> products = [
      ProductModel(
        image: "assets/images/Cloth 1.png",
        price: "£25",
        name: "Top man black",
      ),
      ProductModel(
        image: "assets/images/Cloth 2.png",
        price: "£55",
        name: "Deep gray essential regul..",
      ),
      ProductModel(
        image: "assets/images/Cloth 3.png",
        price: "£35",
        name: "Top man black with Trous..",
      ),
      ProductModel(
        image: "assets/images/Cloth 4.png",
        price: "£46",
        name: "Gray coat and white T-sh..",
      ),
      ProductModel(
        image: "assets/images/Cloth 1.png",
        price: "£25",
        name: "Top man black",
      ),
      ProductModel(
        image: "assets/images/Cloth 2.png",
        price: "£55",
        name: "Deep gray essential regul..",
      ),
      ProductModel(
        image: "assets/images/Cloth 3.png",
        price: "£35",
        name: "Top man black with Trous..",
      ),
      ProductModel(
        image: "assets/images/Cloth 4.png",
        price: "£46",
        name: "Gray coat and white T-sh..",
      ),
    ];
    return Scaffold(
      appBar: CustomAppBar(
        title: "Men",
        leadingIcon: "assets/icons/arrow-left.png",
        actionIcon: "assets/icons/pag.jpg",
      ),
      body: Column(
        children: [
          SectionOneCategories(),
          const Gap(20),
          Expanded(
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.8,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                final items = products[index];
                return Column(
                  children: [
                    Container(
                      height: 255,
                      width: 200,
                      decoration: BoxDecoration(color: Color(0xffECECEC)),
                      child: Image.asset(items.image),
                    ),
                    Gap(10),
                    Text(
                      maxLines: 1,
                      items.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            items.price,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image.asset("assets/icons/heart.png"),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
