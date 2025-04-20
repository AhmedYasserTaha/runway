import 'package:flutter/material.dart';
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
    _controller = VideoPlayerController.asset(
        "assets/images/-4c1c-40d7-9bbd-9c5754f90502.mov",
      )
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "runway",
        leadingIcon: "assets/icons/bar-chart-2.png",
        actionIcon: "assets/icons/solar_bell-line-duotone.png",
      ),

      body: Column(children: [VideoPlayer(_controller)]),
    );
  }
}
