import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:run_away/core/model/categorie_model.dart';
import 'package:run_away/core/widget/custom_app_bar.dart';
import 'package:run_away/pages/product/categories_screen.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset(
            "assets/images/-4c1c-40d7-9bbd-9c5754f90502.mov",
          )
          ..initialize().then((_) {
            setState(() {
              _controller.pause();
            });
          })
          ..setLooping(true);
  }

  List<CategorieModel> categorieModel = [
    CategorieModel(name: "Women", image: "assets/images/image.png"),
    CategorieModel(name: "Men", image: "assets/images/image (1).png"),
    CategorieModel(name: "Kids", image: "assets/images/image (2).png"),
    CategorieModel(name: "Deals", image: "assets/images/image (3).png"),
    CategorieModel(name: "Home", image: "assets/images/image (4).png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "runway",
        leadingIcon: "assets/icons/bar-chart-2.png",
        actionIcon: "assets/icons/solar_bell-line-duotone.png",
      ),
      body:
          _controller.value.isInitialized
              ? Column(
                children: [
                  // الفيديو بأبعاده الطبيعية
                  AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  ),

                  // الكاتيجوريز
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(20),
                          const Text(
                            "Categories",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(20),

                          Expanded(
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children:
                                    categorieModel.map((item) {
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder:
                                                    (context) =>
                                                        CategoriesScreen(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.asset(
                                                  item.image,
                                                  width: 80,
                                                  height: 80,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const Gap(10),
                                              Text(
                                                item.name,
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
              : const Center(child: CircularProgressIndicator()),
    );
  }
}
