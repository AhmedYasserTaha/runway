import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SectionOneCategories extends StatelessWidget {
  const SectionOneCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Text("Sort by", style: TextStyle(fontSize: 20)),
            Gap(20),

            Image.asset("assets/icons/Frame 39639.png", height: 30, width: 15),
            Spacer(),
            Image.asset("assets/icons/fluent_apps-list-detail-20-regular.png"),
            Gap(20),

            Text("Filter", style: TextStyle(fontSize: 20)),
            Gap(20),

            Image.asset("assets/icons/ion_grid-outline.png"),
            Gap(20),

            Image.asset("assets/icons/solar_users-group-rounded-outline.png"),
          ],
        ),
      ),
    );
  }
}
