import 'package:flutter/material.dart';
import '../../../controllers/main_controller.dart';
import '../../../core/resources/colors_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, this.onTap});
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: MainController.currentIndex,
      backgroundColor: Colors.deepPurple,
      selectedItemColor: ColorsManager.purple,
      unselectedItemColor: ColorsManager.white,
      items: MainController.navItems,
    );
  }
}
