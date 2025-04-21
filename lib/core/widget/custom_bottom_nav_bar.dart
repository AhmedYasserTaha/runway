import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      showUnselectedLabels: true,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 30),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border, size: 30),
          label: 'Likes',
        ),
        BottomNavigationBarItem(
          icon: badges.Badge(
            position: badges.BadgePosition.topEnd(top: -10, end: -12),
            badgeContent: const Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            badgeStyle: const badges.BadgeStyle(badgeColor: Colors.red),
            child: const Icon(Icons.shopping_bag_outlined, size: 30),
          ),
          label: 'Bag',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline, size: 30),
          label: 'Profile',
        ),
      ],
    );
  }
}
