import 'package:flutter/material.dart';
import 'package:run_away/core/model/categorie_model.dart';
import 'package:run_away/core/widget/custom_app_bar.dart';
import 'package:run_away/core/widget/custom_bottom_nav_bar.dart';
import 'package:run_away/pages/home/widget/categoriews_section.dart';
import 'package:run_away/pages/home/widget/video_section.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  int selectedIndex = 0;

  List<CategorieModel> categorieModel = [
    CategorieModel(name: "Women", image: "assets/images/image.png"),
    CategorieModel(name: "Men", image: "assets/images/image (1).png"),
    CategorieModel(name: "Kids", image: "assets/images/image (2).png"),
    CategorieModel(name: "Deals", image: "assets/images/image (3).png"),
    CategorieModel(name: "Home", image: "assets/images/image (4).png"),
  ];

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
                  VideoSection(controller: _controller),
                  Expanded(
                    child: CategoriesSection(categorieModel: categorieModel),
                  ),
                ],
              )
              : const Center(child: CircularProgressIndicator()),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
