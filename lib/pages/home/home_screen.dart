import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:run_away/core/model/categorie_model.dart';
import 'package:run_away/core/widget/custom_app_bar.dart';
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
    CategorieModel(name: "Men", image: "asseassets/images/image (1).png"),
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

      body: Stack(
        children: [
          //video
          _controller.value.isInitialized
              ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
              : Container(),

          //categorys
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: double.infinity,

              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(10),
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(10),
                    Row(
                      children: List.generate(categorieModel.length, (index) {
                        final item = categorieModel[index];
                        return Column(
                          children: [
                            Image.asset(item.image),
                            const Gap(10),
                            Text(item.name),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
