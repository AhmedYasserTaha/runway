import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:run_away/core/model/product_model.dart';

class GridViewItemWidget extends StatelessWidget {
  const GridViewItemWidget({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.55,
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
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Stack(
                    children: [
                      Center(child: Image.asset(items.image)),
                      Positioned(
                        bottom: -5,
                        left: 10,
                        right: 10,
                        child: Image.asset("assets/icons/shdow.png"),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
              Text(
                maxLines: 1,
                items.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
    );
  }
}
