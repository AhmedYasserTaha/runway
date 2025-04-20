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
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      leading: SvgPicture.asset(leadingIcon),
      title: Text(title),
      actions: [SvgPicture.asset(actionIcon)],
    );
  }
}
