import 'package:flutter/material.dart';
import 'package:run_away/core/widget/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: "runway",
        leadingIcon: "assets/icons/bar-chart-2.png",
        actionIcon: "assets/icons/solar_bell-line-duotone.png",
      ),
    );
  }
}
