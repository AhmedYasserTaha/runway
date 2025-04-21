import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.actionIcon,
    this.onTap,
  });
  final String title;
  final String leadingIcon;
  final String actionIcon;
  final void Function()? onTap;
  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      backgroundColor: Colors.white,
      centerTitle: true,
      toolbarHeight: preferredSize.height,
      leading: SizedBox.shrink(),
      leadingWidth: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Image.asset(leadingIcon, width: 24),
          ),
          Text(title),
          Image.asset(actionIcon, width: 20),
        ],
      ),
    );
  }
}
