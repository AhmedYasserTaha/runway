import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.actionIcon,
  });
  final String title;
  final String leadingIcon;
  final String actionIcon;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: preferredSize.height,
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(leadingIcon, width: 24),
          Text(title),
          Image.asset(actionIcon, width: 20),
        ],
      ),
    );
  }
}
